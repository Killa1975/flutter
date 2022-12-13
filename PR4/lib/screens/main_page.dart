import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit_counter.dart';
import '../cubit/cubit_list.dart';
import '../cubit/cubit_settings.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
  appBar: AppBar(title: const Text('PR4'),),
      body: 
      Center(
        child: Column(
          
          children: 
          <Widget>[
          

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container( 
                 
              child: ElevatedButton(
                onPressed: ()
                {
                  if(context.read<SettingCubit>().state.theme == ThemeData.light())
                  {
                    context.read<CounterCubit>().increment();
                    context.read<ListCubit>().addHistory("+ 1");
                  }
                  else
                  {
                    context.read<CounterCubit>().increment(2);
                    context.read<ListCubit>().addHistory("+ 2");
                  }                  
                }, 

                child: Text(
                  '+',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                ),
              ),
             ),
        Container( 
        child: ElevatedButton(
          child: Text('Theme'),
          
          onPressed: ()
          {
            context.read<SettingCubit>().toogleTheme();   
          },
          ),
          ),

             Container(
              child: ElevatedButton(
                onPressed: ()
                {
                  if(context.read<SettingCubit>().state.theme == ThemeData.light())
                  {
                    context.read<CounterCubit>().decrement();
                    context.read<ListCubit>().addHistory("- 1");
                  }
                  else
                  {
                    context.read<CounterCubit>().decrement(2); 
                    context.read<ListCubit>().addHistory("- 2");
                  }
                },

                child: Text(
                  '-',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                    ),
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red), 
                ),
              )
             )
            ]
          ),
Container(
  child: Column(
         children: 
          <Widget>[
          BlocBuilder<CounterCubit,CounterState>(
            
             builder: (context, state) {
               return Center(child:
          Text('${state.value}'));
             }
          )
          ]
        ),

),
          Expanded(
          child: SizedBox(
            
            height: 500.1,
            child: 
            BlocBuilder<ListCubit, ListState>(
              builder: (context, state)
              {
                return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: context.read<ListCubit>().state.history.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${state.history[index]}'),
                    ),
                  ]
                  );
                }
              );
              }
            )
          ),
        ),
      ]
      ),
      ),
    );
  }
}