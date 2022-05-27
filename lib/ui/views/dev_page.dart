import 'package:flutter/material.dart';

class DevPage extends StatefulWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  List<String> items = List.generate(
    15,
    (index) => 'ITEM ${index + 1}',
  );
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
  }

  Future fetch() async {
    setState(() {
      items.addAll(['Item A', 'Item B', 'Item C', 'Item D']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          backgroundColor: Color(0xfff2f1f6),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.logout),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,

                        //border: Border.all(color: Colors.green, width: 3),

                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite, color: Colors.green),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text('Yay! A SnackBar!\nYou did great!',
                                style: TextStyle(color: Colors.green)),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () => debugPrint("Undid"),
                              child: Text("Undo"))
                        ],
                      )),
                ),
              );
            },
          ),
          body: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Container(
                  child: ListView.builder(

                    //padding: const EdgeInsets.all(0),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items.length + 1,
                    itemBuilder: (context, index) {
                      if (index < items.length) {
                        return ListTile(
                          title: Text(items[index]),
                        );
                      } else {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 400,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
