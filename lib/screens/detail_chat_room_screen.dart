part of 'screens.dart';

class DetailChatRoomScreen extends StatelessWidget {
  const DetailChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(.1), offset: const Offset(0, 1))],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(
                    padding: const EdgeInsets.only(),
                    icon: const Icon(Icons.arrow_back_rounded),
                    onPressed: () {},
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      "https://avatars.githubusercontent.com/u/61603120?v=4",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          "monfadev",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text("online", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    children: [
                      const SizedBox(height: 10),
                      _sender(),
                      _receiver(),
                      _sender(),
                      _receiver(),
                      _sender(),
                      _receiver(),
                      _sender(),
                      _receiver(),
                      _sender(),
                      _receiver(),
                      _sender(),
                      _receiver(),
                      const SizedBox(height: 100),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Colors.grey.shade200))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                        style: TextButton.styleFrom(padding: const EdgeInsets.only(), shape: const CircleBorder(), backgroundColor: Colors.green),
                                        onPressed: () {},
                                        child: const Icon(Icons.add, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Expanded(
                                    child: TextField(
                                      maxLines: 5,
                                      minLines: 1,
                                      keyboardType: TextInputType.multiline,
                                      decoration: InputDecoration(border: InputBorder.none, hintText: "Message"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: TextButton(
                                style: TextButton.styleFrom(backgroundColor: Colors.green, padding: const EdgeInsets.only()),
                                child: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sender() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              constraints: const BoxConstraints(maxWidth: 300, minWidth: 100),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.green,
              ),
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 15),
                    child: Text("Hallo", style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text("11:13", style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _receiver() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              constraints: const BoxConstraints(maxWidth: 300, minWidth: 100),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.green,
              ),
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 15),
                    child: Text("Hallo", style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text("11:13", style: TextStyle(color: Colors.white, fontSize: 12)),
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
