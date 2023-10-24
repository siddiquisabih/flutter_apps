import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:earth_ar_app/views/optionModels.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class LocalAndWebObjectsView extends StatefulWidget {
  final OptionsModel modelData;

  const LocalAndWebObjectsView({super.key, required this.modelData});
  // const LocalAndWebObjectsView({Key? key, this.appObj}) : super(key: key);

  @override
  State<LocalAndWebObjectsView> createState() => _LocalAndWebObjectsViewState();
}

class _LocalAndWebObjectsViewState extends State<LocalAndWebObjectsView> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;

//String localObjectReference;
  ARNode? localObjectNode;

//String webObjectReference;
  ARNode? webObjectNode;

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    // 1
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;
    // 2
    this.arSessionManager.onInitialize(
          showFeaturePoints: false,
          showPlanes: true,
          customPlaneTexturePath: "triangle.png",
          showWorldOrigin: true,
          handleTaps: false,
        );
    // 3
    this.arObjectManager.onInitialize();
  }

  Future<void> onLocalObjectButtonPressed() async {
    // 1
    if (localObjectNode != null) {
      arObjectManager.removeNode(localObjectNode!);
      localObjectNode = null;
    } else {
      // 2

      var newNode = ARNode(
          type: NodeType.localGLTF2,
          // uri: "assets/Chicken_01/Chicken_01.gltf",
          // uri: "assets/Sponza/glTF/Sponza.gltf",
          uri: widget.modelData.filePath,
          scale: Vector3(0.1, 0.1, 0.1),
          position: Vector3(0.0, 0.0, 0.0),
          rotation: Vector4(1.0, 0.0, 0.0, 0.0));
      // 3
      bool? didAddLocalNode = await arObjectManager.addNode(newNode);
      print(didAddLocalNode);
      localObjectNode = (didAddLocalNode!) ? newNode : null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.modelData.bgColor,
        // title: const Text("Local / Web Objects"),
        title: Text(widget.modelData.optionName),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Container(
                  color: const Color(0xff000000),
                  child: ARView(
                    onARViewCreated: onARViewCreated,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: onLocalObjectButtonPressed,
                      child: const Text("Add / Remove Local Object")),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        //TODO
                      },
                      child: const Text("Add / Remove Web Object")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
