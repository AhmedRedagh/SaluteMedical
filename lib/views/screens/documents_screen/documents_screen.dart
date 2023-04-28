import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_cubit.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_states.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/widgets/documents_widget/car_owner_section_doc_w.dart';
import 'package:salute_medical/views/widgets/documents_widget/item_uploader.dart';

import '../../../config/theme_colors.dart';
import '../../widgets/app_bar_widget.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = DocumentsCubit.get(context);
    return BlocBuilder<DocumentsCubit, DocumentsStates>(
      builder: (context, state) => Scaffold(
        appBar: appBarW(
          name: "Documents",
          context: context,
        ),
        body: Column(
          children: [
            ItemUploader(
              uploadedImage: cubit.idImg,
              name: 'ID Card',
            ),
            ItemUploader(
              uploadedImage: cubit.driveLicenseImg,
              name: 'Driving license',
            ),
            const CarOwnerSection(),
            ConditionalBuilder(
              builder: (context) => ItemUploader(
                uploadedImage: cubit.carLicenseImg,
                name: 'Car License',
              ),
              condition: cubit.carOwner == true,
              fallback: (context) {
                return const SizedBox();
              },
            ),
            ConditionalBuilder(
              builder: (context) => ItemUploader(
                uploadedImage: cubit.carImg,
                name: 'Car Photo',
              ),
              condition: cubit.carOwner == true,
              fallback: (context) {
                return const SizedBox();
              },
            ),
            const Sbox(
              h: 10,
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: CustomButton(
                bgColor: TColor.prim,
                textColor: Colors.white,
                text: 'Register',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                width: 300,
                radius: 40,
                borderColor: TColor.iconGary,
                onTap: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
