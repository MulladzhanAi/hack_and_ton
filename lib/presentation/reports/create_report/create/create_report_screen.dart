import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/presentation/reports/create_report/create/create_report_bloc.dart';
import 'package:hack_and_ton/presentation/reports/reports_screen.dart';
import '../../../../widgets/button.dart';
import 'create_report_state.dart';



class CreateReportScreen extends StatefulWidget {
  final String districtId;
  final String organizationId;

  const CreateReportScreen({
    super.key,
    required this.organizationId,
    required this.districtId,
  });

  @override
  State<CreateReportScreen> createState() => _CreateReportScreenState();
}

class _CreateReportScreenState extends State<CreateReportScreen> {

  late CreateReportBloc bloc;
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  void initState() {
    bloc = CreateReportBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: BlocProvider(create: (context){
        return bloc;
      },
        child: SingleChildScrollView(
          child: BlocBuilder<CreateReportBloc,CreateReportState>(builder: (context,state){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16,),
                  Text("Введите свой адрес",style: defaultTextStyle(),),
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Text("Опишите свою проблему",style: defaultTextStyle(),),
                  const SizedBox(height: 16,),
                  TextFormField(
                    controller: _descController,
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Button(
                    label: 'Подтвердить',
                    onTap: () {
                      bloc.createReport(
                          description: _descController.text,
                          address: _addressController.text,
                          districtId: widget.districtId,
                          organizationId: widget.organizationId,
                        onSucces: (){
                            showSnackBar('Заявка успешно отправлена');
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return ReportsScreen();
                            }));
                        }
                      );
                    },

                  ),

                ],
              ),
            );
          }),
        ),
      )
      ),
    );
  }

  TextStyle defaultTextStyle(){
    return const TextStyle(fontSize: 16,);
  }

  showSnackBar(String text){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Center(child: Text('${text}')),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 6.0,
      ),
    );
  }
}
