import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/presentation/reports/create_report/create/create_report_screen.dart';
import 'package:hack_and_ton/presentation/reports/create_report/district_list/district_list_bloc.dart';
import 'package:hack_and_ton/presentation/reports/create_report/organization_list/organization_list_bloc.dart';
import 'package:hack_and_ton/presentation/reports/create_report/organization_list/organization_list_state.dart';

import 'district_list_state.dart';


class DistrictListScreen extends StatefulWidget {
  final String organizationId;
  const DistrictListScreen({
    required this.organizationId,
    super.key});

  @override
  State<DistrictListScreen> createState() => _DistrictListScreenState();
}

class _DistrictListScreenState extends State<DistrictListScreen> {

  late DistrictListBloc bloc;

  @override
  void initState() {
    bloc = DistrictListBloc();
    super.initState();
  }

  TextStyle defaultTextStyle(){
    return const TextStyle(fontSize: 16);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: BlocProvider(create: (context){
        return bloc;
      },
        child: SingleChildScrollView(
          child: BlocBuilder<DistrictListBloc,DistrictListState>(builder: (context,state){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16,),
                  Text("Выберете район",style: defaultTextStyle(),),
                  const SizedBox(height: 16,),

                  for(var item in state.districts)...[
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return CreateReportScreen(organizationId: widget.organizationId, districtId: item.id ?? "");
                        }));
                      },
                      child: ListTile(
                        title: Text("${item.name}"),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    )
                  ]
                ],
              ),
            );
          }),
        ),
      )
      ),
    );
  }
}
