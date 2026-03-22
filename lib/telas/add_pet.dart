import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class AddPetPage extends StatelessWidget {
  const AddPetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 150),
        child: Column(
          children: [
            Image.asset('assets/images/teste.png', width: 250),

            const SizedBox(height: 30),

            Theme(
              data: Theme.of(context).copyWith(
                textTheme: Theme.of(
                  context,
                ).textTheme.apply(fontFamily: 'Nunito'),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Nome do pet'),
                  ),
                  const SizedBox(height: 10),

                  TextField(decoration: InputDecoration(labelText: 'Idade')),
                  const SizedBox(height: 10),

                  TextField(decoration: InputDecoration(labelText: 'Espécie')),
                  const SizedBox(height: 10),

                  TextField(decoration: InputDecoration(labelText: 'Raça')),
                  const SizedBox(height: 20),

                  ElevatedButton.icon(
                    onPressed: () async {
                      FilePickerResult? result = await FilePicker.platform
                          .pickFiles();

                      if (result != null) {
                        print(
                          "Arquivo selecionado: ${result.files.single.name}",
                        );
                      }
                    },
                    icon: const Icon(Icons.add_circle_outline),
                    label: const Text('Adicionar arquivos'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
