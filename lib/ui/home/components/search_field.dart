import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/images_bloc/images_bloc.dart';
import '../../../core/fonts.dart';

class SearchField extends StatelessWidget {
  final TextEditingController searchController;
  const SearchField({
    super.key,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21),
      ),
      color: Colors.white,
      child: TextField(
        controller: searchController,
        onSubmitted: (query) => context.read<ImagesBloc>().add(
              ImagesEvent.searchImages(
                page: 1,
                query: query,
              ),
            ),
        onEditingComplete: () => context.read<ImagesBloc>().add(
              ImagesEvent.searchImages(
                query: searchController.text.trim(),
                page: 1,
              ),
            ),
        cursorColor: Colors.black,
        cursorWidth: 1,
        cursorRadius: const Radius.circular(21),
        style: AppFonts.smallStyle.copyWith(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          hintText: 'Search high-resolution images',
          hintStyle: AppFonts.smallStyle.copyWith(
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey.shade700,
          ),
          suffixIcon: ValueListenableBuilder(
            valueListenable: searchController,
            builder: (context, value, child) {
              return searchController.text.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        searchController.clear();
                        context.read<ImagesBloc>().add(
                              const ImagesEvent.getImages(
                                page: 1,
                              ),
                            );
                      },
                      icon: Icon(
                        Icons.clear_rounded,
                        color: Colors.grey.shade900,
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
