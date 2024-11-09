import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/presentation/report_detail/report_detail_bloc.dart';
import 'package:hack_and_ton/presentation/report_detail/report_detail_state.dart';
import 'package:hack_and_ton/widgets/custom_drawer.dart';

import '../../data/models/report.dart';

class ReportDetailScreen extends StatefulWidget {
  final Report report;
  const ReportDetailScreen({
    required this.report,
    super.key});

  @override
  State<ReportDetailScreen> createState() => _ReportDetailScreenState();
}

class _ReportDetailScreenState extends State<ReportDetailScreen> {

  late ReportDetailBloc bloc;

  @override
  void initState() {
    bloc = ReportDetailBloc();
    super.initState();
  }

  TextStyle defaultTextStyle(){
    return const TextStyle(fontSize: 16,);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return bloc;
      },
      child: Scaffold(
        appBar: AppBar(),
        endDrawer: CustomDrawer(),
        body: SafeArea(child: BlocBuilder<ReportDetailBloc,ReportDetailState>(builder: (context,state){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16,),
                    Text("Организация: ${widget.report.organization?.name ?? ""}",style: defaultTextStyle(),),
                    const SizedBox(height: 16,),
                    Text("Район: ${widget.report.district?.name ?? ""}",style: defaultTextStyle(),),
                    const SizedBox(height: 16,),
                    Text("Описание: ${widget.report.description ?? ""}",style: defaultTextStyle(),),
                    const SizedBox(height: 16,),
                    Text("Статус: ${widget.report.reportStatus?.getName() ?? ""}",style: defaultTextStyle().copyWith(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}
