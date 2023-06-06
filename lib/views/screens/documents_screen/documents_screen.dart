import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_cubit.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_states.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/screens/documents_success_screen/documents_success_screen.dart';
import 'package:salute_medical/views/widgets/documents_widget/car_owner_section_doc_w.dart';
import 'package:salute_medical/views/widgets/documents_widget/item_uploader.dart';

import '../../../config/theme_colors.dart';
import '../../widgets/app_bar_widget.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentsCubit, DocumentsStates>(
      builder: (context, state) => Scaffold(
        appBar: appBarW(
          name: "Documents",
          context: context,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Column(
              children: [
                ItemUploader(
                  uploadedImage: context.watch<DocumentsCubit>().idImg,
                  name: 'ID Card',
                ),
                ItemUploader(
                  uploadedImage:
                      context.watch<DocumentsCubit>().driveLicenseImg,
                  name: 'Driving license',
                ),
                const CarOwnerSection(),
                ConditionalBuilder(
                  builder: (context) => ItemUploader(
                    uploadedImage:
                        context.watch<DocumentsCubit>().carLicenseImg,
                    name: 'Car License',
                  ),
                  condition: context.watch<DocumentsCubit>().carOwner == true,
                  fallback: (context) {
                    return const SizedBox();
                  },
                ),
                ConditionalBuilder(
                  builder: (context) => ItemUploader(
                    uploadedImage: context.watch<DocumentsCubit>().carImg,
                    name: 'Car Photo',
                  ),
                  condition: context.watch<DocumentsCubit>().carOwner == true,
                  fallback: (context) {
                    return const SizedBox();
                  },
                ),
                const Sbox(
                  h: 3,
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: CustomButton(
                    bgColor: TColor.prim,
                    textColor: Colors.white,
                    text: 'Send',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    width: 300,
                    radius: 40,
                    borderColor: TColor.iconGary,
                    onTap: () => NavigationUsage.navigateTo(
                        context, const DocSuccessScreen()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
