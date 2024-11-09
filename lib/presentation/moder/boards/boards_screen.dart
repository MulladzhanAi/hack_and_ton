import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/models/organization.dart';
import 'package:hack_and_ton/presentation/moder/boards/boards_bloc.dart';
import 'package:hack_and_ton/presentation/moder/boards/boards_state.dart';

import '../../../data/models/district.dart';

class BoardsScreen extends StatefulWidget {
  const BoardsScreen({super.key});

  @override
  State<BoardsScreen> createState() => _BoardsScreenState();
}

class _BoardsScreenState extends State<BoardsScreen> {

  late BoardsBloc bloc;

  @override
  void initState() {
    bloc = BoardsBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context){
      return bloc;
    },
      child: Scaffold(
        body: SafeArea(child: BlocBuilder<BoardsBloc,BoardsState>(builder: (context,state){
          return SingleChildScrollView(
            child: Column(

              children: [
                Row(
                  children: [
                    Expanded(
                      child: DropdownButton(
                        value: state.selectedDistricts, // выбранное значение
                        hint: Text("Выберите район"),
                        items: state.districts.map((district) {
                          return DropdownMenuItem<District>(
                            value: district,
                            child: Text("${district.name}"),
                          );
                        }).toList(),
                        onChanged: (District? newDistrict) {
                          bloc.selectDistrict(newDistrict);
                        },
                      ),
                    ),
                    const SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      bloc.removeDistricts();
                    }, icon: Icon(Icons.clear)),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: DropdownButton(
                        value: state.selectedOrganization, // выбранное значение
                        hint: Text("Выберите организацию"),
                        items: state.organization.map((organization) {
                          return DropdownMenuItem<Organization>(
                            value: organization,
                            child: Text("${organization.name}"),
                          );
                        }).toList(),
                        onChanged: (Organization? newOrganization) {
                          bloc.selectOrganization(newOrganization);
                        },
                      ),
                    ),
                    const SizedBox(width: 8,),
                    IconButton(onPressed: (){
                      bloc.removeOrganization();
                    }, icon: Icon(Icons.clear)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const SizedBox(height: 16,),
                          Text("К выполнению"),
                          for(var item in state.todo)...[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.grey,
                              ),
                              child: ListTile(
                                title: Text("${item.description} ${item.district?.name} ${item.organization?.name}",textAlign: TextAlign.center,),
                              ),
                            ),
                            const SizedBox(height: 8,),

                          ]
                        ],
                      ),
                    )),
                    Expanded(child: Column(
                      children: [
                        const SizedBox(height: 16,),
                        Text("Выполняются"),
                        for(var item in state.in_progress)...[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey,
                            ),
                            child: ListTile(
                              title: Text("${item.description} ${item.district?.name} ${item.organization?.name}",textAlign: TextAlign.center,),
                            ),
                          ),
                          const SizedBox(height: 8,),
                        ]
                      ],
                    )),
                    Expanded(child: Column(
                      children: [
                        const SizedBox(height: 16,),
                        Text("Завершены"),
                        for(var item in state.closed)...[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey,
                            ),
                            child: ListTile(
                              title: Text("${item.description} ${item.district?.name} ${item.organization?.name}",textAlign: TextAlign.center,),
                            ),
                          ),
                          const SizedBox(height: 8,),

                        ]
                      ],
                    )),
                  ],
                ),
              ],
            ),
          );
        })),
      ),
    );
  }
}
