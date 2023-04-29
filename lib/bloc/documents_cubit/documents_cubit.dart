import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'documents_states.dart';

class DocumentsCubit extends Cubit<DocumentsStates> {
  DocumentsCubit() : super(DocumentsInitialState());

  static DocumentsCubit get(context) => BlocProvider.of(context);

  File? idImg, driveLicenseImg, carLicenseImg, carImg;
  bool carOwner = false;

  Future<void> pickerResult(name) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'gif'],
    );

    if (result != null) {
      check(result, name);
      emit(DocumentsSuccessState());
    } else {
      emit(DocumentsSuccessState());
    }
  }

  void check(result, name) {
    switch (name) {
      case 'ID Card':
        idImg = File(result.files.single.path!);
        break;
      case 'Driving license':
        driveLicenseImg = File(result.files.single.path!);
        break;
      case 'Car License':
        carLicenseImg = File(result.files.single.path!);
        break;
      case 'Car Photo':
        carImg = File(result.files.single.path!);
        break;
    }
  }

  void isCarOwner() {
    emit(CarOwnerState());
  }
}
