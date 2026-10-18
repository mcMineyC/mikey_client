import "dart:math" as math;

import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:get/get.dart";
import "package:google_fonts/google_fonts.dart";

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
          print(
            plan?.people
                .map((p) => p.name + ": " + (p.micId ?? "(null)"))
                .toList(),
          );
        })
        .onError((error, stackTrace) {
          print("Error fetching plan $planId: $error");
          print(stackTrace);
          throw Exception("Error fetching plan $planId: $error");
        });
    const double refHeight = 976;
    const double refWidth = 700;
    // print(
    // "${MediaQuery.of(context).size.width}x${MediaQuery.of(context).size.height}",
    // );
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
                        var people = plan!.people
                            .where((person) => person.micId != null)
                            .toList();
                        people.sort((a, b) => a.micId!.compareTo(b.micId!));
                        bool compact =
                            people.length * 320 >
                            MediaQuery.of(context).size.width;
                        bool mics = true;
                        ThemeData t = Theme.of(context);
                        // if (people.isEmpty) {
                        //   return Center(
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Icon(Icons.mic_off_rounded, size: 64),
                        //         SizedBox(height: 16),
                        //         Text(
                        //           "No mics assigned!",
                        //           style: t
                        //               .textTheme
                        //               .headlineSmall,
                        //         ),
                        //       ],
                        //     ),
                        //   );
                        // }
                        if (people.isEmpty) {
                          people = plan!.people;
                          mics = false;
                        }

                        final cardWidth = constraints.maxWidth / people.length;
                        final imageSize = math.max(0.0, cardWidth - 64);

                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: people
                              .map(
                                (person) => SizedBox(
                                  width: cardWidth,
                                  height: constraints.maxHeight,
                                  child: _ScaleDown(
                                    child: Card.filled(
                                      shape: RoundedRectangleBorder(
                                        // side: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(
                                          compact ? 24 : 48,
                                        ),
                                      ),
                                      // shape: RoundedRectangleBorder(
                                      //   side: BorderSide(color: Colors.red),
                                      //   borderRadius: BorderRadius.circular(48),
                                      // ),
                                      margin: EdgeInsets.all(compact ? 8 : 16),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                          compact ? 8 : 16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    compact ? 16 : 32,
                                                  ),
                                              child: ConstrainedBox(
                                                constraints: BoxConstraints(
                                                  maxWidth: imageSize,
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
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                    0,
                                                    8.0,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                person.shortName,
                                                textAlign: TextAlign.center,
                                                style: compact
                                                    ? t.textTheme.headlineMedium
                                                    : t.textTheme.displayMedium
                                                          ?.copyWith(
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                    0,
                                                    8.0,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                mics
                                                    ? person.micId!
                                                    : person.role,
                                                textAlign: TextAlign.center,
                                                style: compact
                                                    ? t.textTheme.displaySmall
                                                    : t.textTheme.displayLarge,
                                              ),
                                            ),
                                          ],
                                        ),
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

class _ScaleDown extends SingleChildRenderObjectWidget {
  const _ScaleDown({required super.child});

  @override
  RenderObject createRenderObject(BuildContext context) => _RenderScaleDown();
}

class _RenderScaleDown extends RenderProxyBox {
  double _scale = 1;

  @override
  void performLayout() {
    final currentChild = child;
    if (currentChild == null) {
      size = constraints.smallest;
      return;
    }

    currentChild.layout(
      BoxConstraints(
        maxWidth: constraints.maxWidth,
        maxHeight: double.infinity,
      ),
      parentUsesSize: true,
    );

    final childSize = currentChild.size;
    final scaleX = childSize.width == 0
        ? 1.0
        : constraints.maxWidth / childSize.width;
    final scaleY = childSize.height == 0
        ? 1.0
        : constraints.maxHeight / childSize.height;
    _scale = math.min(1.0, math.min(scaleX, scaleY));
    size = constraints.constrain(
      Size(childSize.width * _scale, childSize.height * _scale),
    );
  }

  Offset get _childOffset {
    final currentChild = child;
    if (currentChild == null) return Offset.zero;
    return Offset(
      (size.width - currentChild.size.width * _scale) / 2,
      (size.height - currentChild.size.height * _scale) / 2,
    );
  }

  Matrix4 _transform() {
    final offset = _childOffset;
    return Matrix4.identity()
      ..translateByDouble(offset.dx, offset.dy, 0, 1)
      ..scaleByDouble(_scale, _scale, 1, 1);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;
    context.pushTransform(
      needsCompositing,
      offset,
      _transform(),
      (context, offset) => context.paintChild(child!, offset),
    );
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    if (child == null) return false;
    return result.addWithPaintTransform(
      transform: _transform(),
      position: position,
      hitTest: (result, transformed) =>
          child!.hitTest(result, position: transformed),
    );
  }

  @override
  void applyPaintTransform(RenderBox child, Matrix4 transform) {
    final offset = _childOffset;
    transform
      ..translateByDouble(offset.dx, offset.dy, 0, 1)
      ..scaleByDouble(_scale, _scale, 1, 1);
  }
}
