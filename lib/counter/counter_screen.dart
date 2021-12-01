import 'package:bloc_provider/counter/cubit/States.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'cubit/cubit.dart';

  class CaunterScreen  extends StatelessWidget
  {


    @override
    Widget build(BuildContext context) {

      return BlocProvider(

        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit,  CounterStates>( //يخليني اعرف بالتغيرات الي هتحصل والي تحصل
          listener: (BuildContext context, state)
          {
            // if(state is CounterPlusState) print("plus State now is ${CounterCubit.get(context).counter}");
            // if(state is CounterMinusState) print("minus State");
          },
          builder: (BuildContext context,  state)
          {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                    "Counter"
                ),
              ),
              body: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed:(){
                      CounterCubit.get(context).minus();
                    },
                      child:Text(
                        "Minus",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        "${CounterCubit.get(context).counter}",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    TextButton(onPressed:(){
                      CounterCubit.get(context).plus();
                    },
                      child:Text(
                        "Plus",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );

    }
}



