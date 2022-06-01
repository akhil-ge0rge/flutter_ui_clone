import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_clone/Screens/transaction_screen.dart';
import 'package:ui_clone/widgets/containerStack.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfffefffe),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30, top: 40),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffeff1ff),
                  ),
                  child: const Icon(
                    Icons.density_large,
                    color: Color(0xff164190),
                    size: 17,
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                Stack(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      size: 25,
                      color: Color(0xffa7b5bc),
                    ),
                    Positioned(
                      right: 3,
                      child: Container(
                        height: 12,
                        width: 12,
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xfffb3e35),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                      image: AssetImage("assets/avatar.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff7985a9),
                  ),
                ),
                Text(
                  "Creative Mints",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff032049),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffeff1fe),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search_outlined,
                  color: Color(0xff164190),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    // focusNode: ,
                    autofocus: true,
                    controller: textController,
                    showCursor: false,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xff8891a1),
                        )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Hero(
                      tag: "TransactionScreen()",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => TransactionScreen(),
                              ));
                        },
                        child: ContainerStack(
                          title: "Transcations",
                          item: "7 items",
                          widgetColor: const Color(0xff00cc89).withOpacity(.7),
                          icon: Icons.attach_money,
                          iconColor: const Color(0xfffcfeff),
                          iconCircleColor:
                              const Color(0xff00cc89).withOpacity(.7),
                        ),
                      ),
                    ),
                    ContainerStack(
                      title: "Budget",
                      item: "4 items",
                      widgetColor: const Color(0xffff5949).withOpacity(.8),
                      icon: Icons.savings,
                      iconColor: const Color(0xffff5949).withOpacity(.8),
                      iconCircleColor: Color(0xfffcfeff),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ContainerStack(
                      title: "Recommendations",
                      item: "6 items",
                      widgetColor: const Color(0xffecad49).withOpacity(.7),
                      icon: Icons.star,
                      iconColor: const Color(0xffecad49).withOpacity(.7),
                      iconCircleColor: Color(0xfffcfeff),
                    ),
                    ContainerStack(
                      title: "Credit Cards",
                      item: "3 Cards",
                      widgetColor: const Color(0xff2f26d9).withOpacity(.8),
                      icon: Icons.credit_card,
                      iconColor: const Color(0xff2f26d9).withOpacity(.8),
                      iconCircleColor: const Color(0xfffcfeff),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "Choose a categories",
              style: TextStyle(
                color: Color(0xff141e3c),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: .5,
                      color: Color(0xff141e3c).withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff62dffe),
                      ),
                      child: const Icon(
                        Icons.home,
                        color: Color(0xfff1ffff),
                      ),
                    ),
                    const Text(
                      "Branch\nServices",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff434d70),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: .5,
                      color: const Color(0xff141e3c).withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xff3f63ff),
                      ),
                      child: const Icon(
                        Icons.credit_card,
                        color: Color(0xfff1ffff),
                      ),
                    ),
                    const Text(
                      "Make a \nPayment",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff434d70),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
