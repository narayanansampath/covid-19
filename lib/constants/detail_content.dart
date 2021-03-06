import 'package:covid/models/content_model.dart';

class ContentDetails {
  ContentDetails._();

  static List<ContentData> sintomas= [
    ContentData(
        title: 'sintomas mais frequentes:',
        data: ['febre', 'tosse', 'dificuldade respiratória (ex: falta de ar)']),
    ContentData(title: 'Também pode surgir:', data: [
      'dor de garganta,',
      'corrimento nasal,',
      'dores de cabeça e/ou musculares e cansaço.',
      'Em casos mais graves, pode levar a pneumonia grave com insuficiência respiratória aguda, falência renal e de outros órgãos, e eventual morte'
    ])
  ];
  static List<ContentData> confinamento_obrigatorio = [
    ContentData(
        title: 'Ficam em estabelecimento de saúde ou no domicílio:',
        data: [
          'Doentes covid-19',
          'Infetados SARS-Cov2',
          'Cidadãos que autoridade de saúde e profissionais de saúde tenham determinado ficar em vigilância'
        ])
  ];
  static List<ContentData> mairoes = [
    ContentData(
        title: 'Estes cidadãos só podem circular na via pública:',
        data: [
          'Para adquirir bens e serviços (ir ao supermercado, padaria)',
          'Deslocação por motivos de saúde',
          'Deslocação aos correios',
          'Deslocação aos bancos',
          'Deslocação às seguradoras',
          'Atividade física de curta duração',
          'Passear animais de companhia curta duração',
          'Se os imunodeprimidos e doença crónica não estiver de baixa médica podem ir trabalhar'
        ])
  ];
  static List<ContentData> generalCitizen = [
    ContentData(title: 'Podem circular na via pública:', data: [
      'Adquirir bens e serviços',
      'Deslocações profissionais',
      'Procura ou oferta de trabalho',
      'Deslocações por motivos de saúde',
      'Deslocações para atividade física curta duração',
      'Participações em ações voluntariado',
      'Cumprimento parental',
      'Participação em atos processuais',
      'Deslocação aos correios',
      'Deslocação ao banco',
      'Deslocação às seguradoras',
      'Passeio de com animais de companhia curta duração',
      'Deslocação de médico veterinários',
      'Deslocação da imprensa',
      'Meter combustível',
      'Ajudar quem está incapacitado ou privado da liberdade'
    ])
  ];
  static List<ContentData> de_encerrar = [
    ContentData(data: [
      'Restaurantes',
      'Cafetarias',
      'Casas de chá',
      'Esplanadas',
      'Máquinas de vending',
      'Discotecas',
      'Bares',
      'Salões de dança',
      'Salões de festa',
      'Termas',
      'Spa',
      'Circos',
      'Parques de diversão',
      'Parques recreativos',
      'Parques aquáticos',
      'Jardins zoológicos',
      'Locais destinado a práticas desportivas de lazer',
      'Auditórios',
      'Cinemas',
      'Teatros',
      'Salas de concerto',
      'Museus',
      'Monumentos',
      'Palácios',
      'Bibliotecas',
      'Praças',
      'Galarias',
      'Pavilhões de congressos',
      'Salas de polivalentes',
      'Salas de conferências',
      'Pavilhões multiusos',
      'Campos de futebol, rugby',
      'Pavilhões ou recintos fechados',
      'Campos de tiro',
      'Campos de ténis',
      'Pistas de patinagem e hóquei',
      'Piscinas',
      'Ringues de boxe e artes marciais',
      'Circuitos de mota, automóveis',
      'Velódromos',
      'Hipódromos',
      'Ginásios',
      'Estádios',
      'Pistas de atletismo',
      'Festas populares',
      'Casinos'
    ])
  ];
  static List<ContentData> estar_aberto = [
  ContentData(data: [
    'Minimercados',
    'Supermercados',
    'Hipermercados',
    'Frutaria',
    'Talhos',
    'Peixarias',
    'Padarias',
    'Mercados para venda de produtos alimentares',
    'Produção e distribuição agroalimentar',
    'Lotas',
    'Confeção de refeições prontas para levar a casa',
    'Farmácias',
    'Serviços médicos',
    'Serviços apoio social',
    'Estabelecimentos de produtos médicos e ortopédicos',
    'Oculistas',
    'Estabelecimentos de produtos cosméticos e de higiene',
    'Estabelecimentos de produtos naturais e dietéticos',
    'Reparação e manutenção água',
    'Reparação e manutenção energia elétrica',
    'Reparação e manutenção gás',
    'Reparação e manutenção comunicações eletrónicas',
    'Serviços postais',
    'Serviços recolha lixo',
    'Transporte de passageiros',
    'Papelarias e tabacarias',
    'Jogos sociais (Euromilhões e totoloto)',
    'Clínicas veterinárias',
    'Drogarias',
    'Estabelecimentos de venda de animais e alimentos',
    'Estabelecimentos de flores, plantas e sementes',
    'Estabelecimentos de lavagem e limpeza a seco',
    'Ferragens',
    'Estabelecimentos de material bricolage',
    'Bombas de gasolina',
    'Pontos de combustível',
    'Manutenção e reparação e automóveis',
    'Manutenção e reparação motas',
    'Manutenção e reparação tratores',
    'Manutenção e reparação máquinas',
    'Venda de peças',
    'Serviços de reboques',
    'Venda e reparação de eletrodomésticos',
    'Venda e reparação de equipamento informático',
    'Venda e reparação comunicações',
    'Bancos',
    'Seguradoras',
    'Segurança e vigilância ao domicílio',
    'Limpeza',
    'Desinfeção',
    'Serviços de entrega ao domicílio',
    'Estabelecimentos turísticos',
    'Serviços de alojamento estudantil'
  ])];
  static List<ContentData> procedimentos = [
  ContentData(title: 'Incumprimento de confinamento obrigatório: ', data: [
  'Comete crime de desobediência',
  'Ordenar o suspeito a colocação do epi',
  'Restringir e algemar o suspeito',
  'Isolá-lo no local',
  'E acionar viatura médica',
  ]),
    ContentData(title: 'Incumprimento do encerramento: ', data: [
      'Notifica-lo que incorre num crime de desobediência',
      'Não acata a ordem (comete o crime de desobediência)',
    ]),
    ContentData(title: 'Cidadão geral: ', data: [
      'Recomendar o cidadão de regresso a casa de forma pedagógica',
      'Não cumpre, crime de desobediência',
    ]),
  ];

  static List<ContentData> outras_medidas = [
    ContentData(title: 'Inspeções de veículos', data: [
      'Os veículos a motor e seus reboques, ligeiros ou pesados, que devessem ser apresentados à inspeção periódica no período que decorre desde 13 de março de 2020 até ao dia 30 de junho de 2020, veem o seu prazo prorrogado por cinco meses contados da data da matrícula. Artigo 2 Decreto-Lei n.º 10-C/2020'
    ]),
    ContentData(title: 'Aluguer de veículos', data: [
      'É permitido o exercício da atividade de aluguer de veículos de mercadorias sem condutor (renta-cargo). (n.º6 Despacho n.º 3614-A/2020)'
    ]),
    ContentData(title: 'Máquinas de vending', data: [
      'É permitido o funcionamento de máquinas de vending em empresas, estabelecimentos ou quaisquer instituições nos quais aquelas máquinas representem o único meio de acesso a produtos alimentares. (n.º1 Despacho n.º 3614-A/2020)'
    ]),
    ContentData(title: 'Vendedores itinerantes', data: [
      'É permitido o exercício da atividade por vendedores itinerantes, para disponibilização de bens de primeira necessidade ou de outros bens considerados essenciais na presente conjuntura, nas localidades onde essa atividade seja necessária para garantir o acesso a bens essenciais pela população. (n.º3 Despacho n.º 3614-A/2020)'
    ]),
    ContentData(title: 'Restauração', data: [
      'Os estabelecimentos de restauração e similares podem manter a respetiva atividade, se os seus titulares assim o decidirem, para efeitos exclusivos de confeção destinada a consumo fora do estabelecimento ou entrega no domicílio, diretamente ou através de intermediário. (N.o2 artigo 9 Decreto n.o 2-A/2020).'
    ]),
    ContentData(title: 'Eventos de cariz religioso e culto', data: [
      'Fica proibida a realização de celebrações de cariz religioso e de outros eventos de culto que impliquem uma aglomeração de pessoas.(No2 artigo 17 Decreto n.o 2-A/2020).'
    ]),
    ContentData(title: 'Funerais', data: [
      'A realização de funerais está condicionada à adoção de medidas organizacionais que garantam a inexistência de aglomerados de pessoas e o controlo das distâncias de segurança, designadamente a fixação de um limite máximo de presenças, a determinar pela autarquia local que exerça os poderes de gestão do respetivo cemitério. (n.o2 artigo 17 Decreto n.o 2-A/2020).'
    ])
  ];

  static List<ContentData> suspeito = [
    ContentData(title: 'caso suspeito, uma pessoa com:', data: [
  'Presença de sintomas (febre ou tosse ou dificuldade respiratória)',
  'Deve:',
  'Dirigir-se para área de isolamento',
  'Informar a pessoa responsável pela entidade',
  'Ir para a sala de isolamento',
  'Colocar a máscara',
  'Contactar a linha SNS24 (808242424) e seguir as suas orientações',
  'Após a decisão sobre o caso',
  'Limpeza e desinfeção da área de isolamento',
  'Reposição do material utilizado',
    ]),
    ContentData(title: 'Contacto com caso confirmado', data: [
      'Isolamento profilático e vigilância ativa de sintomas (febre ou tosse o dificuldade de respirar)',
      'Se aparecer estes sintomas',
      'Ligar imediatamente a linha',
      'SNS24 (808242424)',
    ])
  ];
}
