import 'package:flutter/material.dart';

class StateFullLifeCycle extends StatefulWidget {
  const StateFullLifeCycle({super.key});

  @override
  State<StateFullLifeCycle> createState() =>
      _StateFullLifeCycleState(); // build(create) current state first
}

class _StateFullLifeCycleState extends State<StateFullLifeCycle> {
  @override
  void initState() {
    // بنادي عليها مره واحده  بس في بدايه انشاء ال  state
    // used to intialized contollers or variables ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // تنادي بعد ال  init state كذه مره  عادي
    //  بتتنادي تاني عند تغير  قيم  class  , current state depend on it(this class) as (theme , provider,(inhirted class(widget)),media query)
    // my widget  تعتمد علي  theme  لو اتغير بتتنادي ال   method
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StateFullLifeCycle oldWidget) {
    // called when widget changed   
    //وده عنطريق المقارنه بين  widget , new widget 
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // called when widget deactivated as Navigate to another widget or disappear but remain in tree widgets (وده عكس ال  despose  بتتشال نهائي)
    super.deactivate();
  }

  @override
  void dispose() {
    // بتتفعل عند حذف ال  widget(state)  from tree widgets  بشكل نهائي
    //  مهمه في   dispose(terminate) controlles or anthors variables  to improve my resources(performance)
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    // (weak state management)  used to rebuild UI
    super.setState(fn);
  }

  @override
  // to build(Render) Your Ui on screen
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Container());
  }
}
