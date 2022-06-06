import 'package:flutter/material.dart';
import 'package:postos_local/models/posto.dart';

class PostosRepository extends ChangeNotifier {
  final List<Posto> _postos = [
    Posto(
      nome: 'Posto BIG',
      endereco: 'R. Mal. Deodoro, 27 - Centro, São Bernardo do Campo - SP',
      foto:
          'https://storage.googleapis.com/bucket-grupobig-institucional-prod/72583d66c3e54e109bf2f70d8da200a8/posto-2.png',
      latitude: -23.7110057,
      longitude: -46.5505982,
    ),
    Posto(
      nome: 'Posto Iezzo',
      endereco: 'R. Ana Maria Martinez - Assunção, São Bernardo do Campo - SP',
      foto:
          'https://lh3.googleusercontent.com/p/AF1QipNgSZSNo_OFKOzsOFK_LaUy84yB8n5RU-mcO306=w1080-h608-p-no-v0',
      latitude: -23.7253251,
      longitude: -46.5716566,
    ),
    Posto(
      nome: 'Auto Posto Bambu do Riacho Grande',
      endereco: 'R. Rio Acima, 156 - Riacho Grande, São Bernardo do Campo - SP',
      foto:
          'https://www.google.com/maps/uv?pb=!1s0x94ce3ff61f4af573%3A0xf7be54c865acbc00!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOxBwuMqFmE-lavLqgFWZfBdnZjQvqyNYnKVdDo%3Dw213-h160-k-no!5sAuto%20Posto%20Bambu%20do%20Riacho%20Grande%20-%20Pesquisa%20Google!15sCgIgAQ&imagekey=!1e10!2sAF1QipPUiQS2Vk3PFlAjjXXBY3PkBqcjFjjWbSfa9y9l&hl=pt-BR&sa=X&ved=2ahUKEwi4mbfy05f4AhVulZUCHY7lDzMQoip6BAgtEAM#',
      latitude: -23.7818344,
      longitude: -46.5315056,
    ),
  ];

  List<Posto> get postos => _postos;
}
