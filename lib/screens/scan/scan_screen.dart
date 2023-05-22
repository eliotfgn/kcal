import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  late final cameras;
  late final firstCamera;
  late CameraController controller;
  late Future<void> _initializeControllerFuture;

  init() async {
    cameras = await availableCameras();
    firstCamera = cameras.first;

    controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    _initializeControllerFuture = controller.initialize();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(controller);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.flash_on_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset("assets/images/scanner.png"),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 175,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/last-pic.png"),
                      const CircleAvatar(
                        backgroundColor: Color(0XFFFFC0B8),
                        radius: 36,
                        child: CircleAvatar(
                          backgroundColor: Color(0XFFFF8473),
                          radius: 20,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: ColorConstant.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.cached_rounded,
                          color: Color(0XFFFF8473),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
