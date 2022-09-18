import 'package:flutter/material.dart';


final List<Widget> _listWidgets =  [
 const firstPageView(),
  const secondPageView(),
];

class ContainerPageView extends StatefulWidget {
  const ContainerPageView({
    Key? key,
  }) : super(key: key);

  @override
  State<ContainerPageView> createState() => _ContainerPageViewState();
}

class _ContainerPageViewState extends State<ContainerPageView> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          // image: DecorationImage(image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
          color: Colors.blue.shade300,
          borderRadius: BorderRadius.circular(25),
        ),
        width: MediaQuery.of(context).size.width * 0.91,
        height: MediaQuery.of(context).size.height * 0.25,
        child: PageView.builder(
          // itemCount: _listWidgets.length,
          itemBuilder: ((context, index) {
            return _listWidgets[index];
          }),
          controller: _pageController,
          // children:  [
          //   firstPageView(),
          //   secondPageView(),
          // ],
        ),
        );
  }
}

class firstPageView extends StatelessWidget {
  const firstPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 25,
          top: 30,
          child: Text(
            'Medical Checks!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: 25,
          top: 75,
          child: Text(
            'Check your health condition regulary \n to minimize the incidence to disease in \n the future',
            style: TextStyle(color: Colors.white),
          ),
        ),
        // container for button check now
        Positioned(
          left: 25,
          top: 140,
          child: Container(
            child: Center(child: Text('Check Now')),
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 150,
          child: Image(
          width: 300,
          height: 200,
          image: AssetImage('images/docchina.png'),))
      ],
    );
  }
}


class secondPageView extends StatelessWidget {
  const secondPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 25,
          top: 30,
          child: Text(
            'Medical Checks!!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: 25,
          top: 75,
          child: Text(
            'Check your health condition regulary \n to minimize the incidence to disease in \n the future',
            style: TextStyle(color: Colors.white),
          ),
        ),
        // container for button check now
        Positioned(
          left: 25,
          top: 140,
          child: Container(
            child: Center(child: Text('Check Now')),
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 150,
          child: Image(
          width: 300,
          height: 200,
          image: AssetImage('images/docchina.png'),))
      ],
    );
  }
}
















// import 'package:flutter/material.dart';

// class ContainerPageView extends StatelessWidget {
//   const ContainerPageView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           // image: DecorationImage(image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
//           color: Colors.blue.shade300,
//           borderRadius: BorderRadius.circular(25),
//         ),
//         width: MediaQuery.of(context).size.width * 0.91,
//         height: MediaQuery.of(context).size.height * 0.25,
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               left: 25,
//               top: 30,
//               child: Text(
//                 'Medical Checks!',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 27,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             Positioned(
//               left: 25,
//               top: 75,
//               child: Text(
//                 'Check your health condition regulary \n to minimize the incidence to disease in \n the future',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             // container for button check now
//             Positioned(
//               left: 25,
//               top: 140,
//               child: Container(
//                 child: Center(child: Text('Check Now')),
//                 width: 100,
//                 height: 35,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(35),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 20,
//               left: 150,
//               child: Image(
//               width: 300,
//               height: 200,
//               image: AssetImage('images/docchina.png'),))
//           ],
//         ),
//         );
//   }
// }