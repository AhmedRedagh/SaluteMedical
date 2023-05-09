import 'dart:io';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_cubit.dart';

import '../../custom_widgets/custom_text.dart';

class ItemUploader extends StatelessWidget {
  const ItemUploader({super.key, this.uploadedImage, this.name});
  final File? uploadedImage;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: name,
            fontSize: 25,
            fontW: FontWeight.bold,
          ),
          InkWell(
            onTap: () => context.read<DocumentsCubit>().pickerResult(name),
            child: Container(
              margin: const EdgeInsets.all(20),
              child: ConditionalBuilder(
                builder: (context) => SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                  width: double.maxFinite,
                  child: Icon(
                    Icons.cloud_upload_outlined,
                    size: MediaQuery.of(context).size.height / 8,
                    color: Colors.blue,
                  ),
                ),
                fallback: (context) => Image.file(
                  uploadedImage!,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 10,
                  fit: BoxFit.contain,
                ),
                condition: uploadedImage == null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
