import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/presentation/reports/create_report/district_list/district_list_screen.dart';
import 'package:hack_and_ton/presentation/reports/create_report/organization_list/organization_list_bloc.dart';
import 'package:hack_and_ton/presentation/reports/create_report/organization_list/organization_list_state.dart';


class OrganizationListScreen extends StatefulWidget {
  const OrganizationListScreen({super.key});

  @override
  State<OrganizationListScreen> createState() => _OrganizationListScreenState();
}

class _OrganizationListScreenState extends State<OrganizationListScreen> {

  late OrganizationListBloc bloc;

  @override
  void initState() {
    bloc = OrganizationListBloc();
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
        child: BlocBuilder<OrganizationListBloc,OrganizationListState>(builder: (context,state){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16,),
                Text("Выберете организацию",style: defaultTextStyle(),),
                const SizedBox(height: 16,),
/*                TextFormField(
                  decoration: I,
                )*/
                const SizedBox(height: 16,),
                for(var item in state.organizations)...[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DistrictListScreen(organizationId: item.id ?? "");
                      }));
                    },
                    child: ListTile(
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      title: Text("${item.name}",style: defaultTextStyle(),),
                    ),
                  ),
                  const SizedBox(height: 16,),
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
