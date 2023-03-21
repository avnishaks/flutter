import 'package:chatgpt_app/providers/models_provider.dart';
import 'package:chatgpt_app/services/api_service.dart';
import 'package:chatgpt_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';


class ModelsDrowDownWidget extends StatefulWidget {
  const ModelsDrowDownWidget({ Key? key }) : super(key: key);

  @override
  State<ModelsDrowDownWidget> createState() => _ModelsDrowDownWidgetState();
}

class _ModelsDrowDownWidgetState extends State<ModelsDrowDownWidget> {
  String ? currentModel;
  @override
  Widget build(BuildContext context) {
    final modelsProvider=Provider.of<ModelsProvider>(context,listen:false);
    currentModel=modelsProvider.getCurrentModel;
    return FutureBuilder(
      future: modelsProvider.getAllModels(),
      builder:(BuildContext context,AsyncSnapshot snapshot){
        if(snapshot.hasError){
          return Center(child: TextWidget(label: snapshot.error.toString()),);
        }
         return snapshot.data == null || snapshot.data!.isEmpty
              ? const SizedBox.shrink()
              : FittedBox(
                child: DropdownButton(
                    dropdownColor: scaffoldBackgroundColor,
                    iconEnabledColor: Colors.white,
                    items: List<DropdownMenuItem<String>>.generate(
                        snapshot.data!.length,
                        (index) => DropdownMenuItem(
                            value: snapshot.data![index].id,
                            child: TextWidget(
                              label: snapshot.data![index].id,
                              fontSize: 15,
                            ))),
                    value: currentModel,
                    onChanged: (value) {
                      setState(() {
                        currentModel = value.toString();
                      });
                      modelsProvider.setCurrentModel(value.toString());
                    },
                  ),
              );
        });
  }
}