import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/search_cubit.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchWordScreen extends StatelessWidget {
  const SearchWordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SearchCubit>(),
      child: const SearchWordView(),
    );
  }
}

class SearchWordView extends StatefulWidget {
  const SearchWordView({super.key});

  @override
  State<SearchWordView> createState() => _SearchWordState();
}

class _SearchWordState extends State<SearchWordView> {
  final _wordController = TextEditingController();
  String translationText = '';

  void _searchWord() {
    FocusScope.of(context).unfocus();
    if (_wordController.text.isEmpty) {
      return;
    }
    final result = context.read<SearchCubit>().translate(_wordController.text);
    //
    if (result.isEmpty) {
      // show snackBar
      final snackBar = SnackBar(
        content: Text(
          'This word is not in the dictionary!',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).cardColor,
              ),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    setState(() {
      translationText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    final screenOrientation = MediaQuery.of(context).orientation;
    //print('height: $heightScreen, width: $widthScreen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find translation'),
        actions: [
          IconButton(
            onPressed: () {
              //context.go('/');
              context.read<SearchCubit>().goToStart();
            },
            icon: const Icon(
              Icons.menu_book,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state.words.isEmpty) {
              return const CircularProgressIndicator();
            } else {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Word in English:',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: Theme.of(context).textTheme.headlineSmall,
                              controller: _wordController,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            color: Theme.of(context).colorScheme.primary,
                            onPressed: _searchWord,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenOrientation == Orientation.portrait
                            ? heightScreen / 17
                            : widthScreen / 17, //50,
                      ),
                      Text(
                        'Ukrainian Translation:',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                      Container(
                        height: screenOrientation == Orientation.portrait
                            ? heightScreen / 17
                            : widthScreen / 17,
                        width: widthScreen - 20,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.5, color: Colors.grey),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            translationText,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
