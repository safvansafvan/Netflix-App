import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_npp/application/download/dowload_bloc.dart';
import 'package:netflix_npp/core/contants.dart';
import '../../../core/colors/colors.dart';
import 'custom_btton_widget.dart';

class BackgroundCardwidget extends StatelessWidget {
  const BackgroundCardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<DownloadsBloc, DownloadState>(
          builder: (context, state) {
            return Container(
              height: 600,
              width: double.infinity,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('$imageappentUrl${state.downloads[0].posterpath}'),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomButtonWidget(icon: Icons.add, title: 'MyList'),
              _playbutton(),
              const CustomButtonWidget(icon: Icons.info, title: 'Info')
            ],
          ),
        )
      ],
    );
  }

  TextButton _playbutton() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(cwhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: cblackcolor,
        size: 22,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 20, color: cblackcolor),
        ),
      ),
    );
  }
}
