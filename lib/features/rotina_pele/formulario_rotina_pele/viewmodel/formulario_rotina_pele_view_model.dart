import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioRotinaPeleViewModel extends ChangeNotifier {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();

  FormularioRotinaPeleViewModel();
}
