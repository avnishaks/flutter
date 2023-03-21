import 'package:chatgpt_app/models/models_model.dart';
import 'package:chatgpt_app/services/api_service.dart';
import 'package:flutter/cupertino.dart';

class ModelsProvider with ChangeNotifier{
  List<ModelsModel> modelList=[];
  String currentModel="davinci";
  List<ModelsModel> get getModelsList{
    return modelList;
  }

  String get getCurrentModel{
    return currentModel;
  }

  void setCurrentModel(String newModel){
    currentModel=newModel;
    notifyListeners();
  }


  Future<List<ModelsModel>> getAllModels() async{
    modelList=await ApiService.getModels();
    return modelList;
  }


}