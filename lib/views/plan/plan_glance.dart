import "dart:math" as math;

import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../controllers/data.dart";
import "../../models/enhanced_plan.dart";

class PlanView extends StatelessWidget {
  final int planId;
  RxString hash = "".obs;
  EnhancedPlan? plan;
  PlanView({super.key, required this.planId});

  @override
  Widget build(BuildContext context) {
    Get.find<DataController>()
        .getPlan(planId)
        .then((value) {
          plan = value;
          hash.value =
              Get.find<DataController>().hashes[plan?.planCenterId
                  .toString()] ??
              "";
        })
        .onError((error, stackTrace) {
          print("Error fetching plan $planId: $error");
          print(stackTrace);
          throw Exception("Error fetching plan $planId: $error");
        });
    const double refHeight = 976;
    const double refWidth = 700;
    return Scaffold(
      body: Obx(
        () => hash.value.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final people = plan!.people
                            .where((person) => person.micId != null)
                            .toList();
                        if (people.isEmpty) {
                          return const SizedBox.shrink();
                        }

                        final cardWidth = constraints.maxWidth / people.length;
                        final imageSize = math.max(
                          0.0,
                          math.min(cardWidth - 64, constraints.maxHeight - 98),
                        );

                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: people
                              .map(
                                (person) => ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: cardWidth,
                                    maxHeight: constraints.maxHeight,
                                  ),
                                  child: Card.filled(
                                    shape: RoundedRectangleBorder(
                                      // side: BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(48),
                                    ),
                                    // shape: RoundedRectangleBorder(
                                    //   side: BorderSide(color: Colors.red),
                                    //   borderRadius: BorderRadius.circular(48),
                                    // ),
                                    margin: const EdgeInsets.all(16),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              32,
                                            ),
                                            child: ConstrainedBox(
                                              constraints: BoxConstraints(
                                                maxWidth: imageSize,
                                                maxHeight: imageSize,
                                              ),
                                              child: CachedNetworkImage(
                                                imageUrl: person.imageUrl,
                                                fit: BoxFit.contain,
                                                progressIndicatorBuilder:
                                                    (
                                                      context,
                                                      url,
                                                      downloadProgress,
                                                    ) => Center(
                                                      child:
                                                          CircularProgressIndicator(
                                                            value:
                                                                downloadProgress
                                                                    .progress,
                                                          ),
                                                    ),
                                                errorWidget:
                                                    (
                                                      context,
                                                      url,
                                                      error,
                                                    ) => Center(
                                                      child: Icon(
                                                        Icons
                                                            .error_outline_rounded,
                                                      ),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            person.name,
                                            style: const TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    constraints: BoxConstraints(maxHeight: 96, minHeight: 96),
                    // color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_rounded, size: 48.0),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        Obx(
                          () => Text(
                            hash.value.isNotEmpty
                                ? plan?.descriptiveTitle ?? 'Plan $planId'
                                : 'Loading',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
