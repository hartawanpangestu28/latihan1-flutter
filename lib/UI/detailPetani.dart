import 'package:flutter/material.dart';
import 'package:rumahpetani/Models/petani.dart';

class DetailPetani extends StatefulWidget {
  const DetailPetani({required this.petani});
  final Petani petani;
  @override
  _DetailPetaniState createState() => _DetailPetaniState();
}

class _DetailPetaniState extends State<DetailPetani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.petani.nama),
        ),
        body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Image.network(widget.petani.foto),
              Container(
                padding: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                )),
                child: Text(
                  widget.petani.nik,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
