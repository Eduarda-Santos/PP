void main(List<String> args) {
  List<String> nome = ['Joao', 'Maria'];
  print(nome);
  //print("Olá, Mundo");
  //runtime, pega o tipo
  print(nome.runtimeType);
  //element é cada elemento da minha lista
  //$ interpolação, recurso para itens/var. permite imprimir uma var entre aspas

  //vai imprimir cada item por vez, pois percore
  nome.forEach((item) {
    print('Nome: $item');
  });

  //contains, verifica o que tem na lista, retorna true or false
  print(nome.contains('João'));

  //every, checagem. parametro funcao anonima. interar sobre a lista e retornar boolena
  dynamic t = nome.every((element) => element.length >= 1);

  //interar a lista, faz a chegagem e retorna um interavel/itereable. sublista
  //toList, converte para uma lista
  t = nome.where((element) => element.contains('a')).toList();
  print(t);
  print(nome.runtimeType);

  //retorna interavel, to uppercase --maisculo
  t = nome.map((e) => e.toUpperCase());
  print(t);

  //foreach apenas percorre e retorna void, apenas utilizado dentro da funcao a
  //map filtra e transforma para iteravel

  /*t = nome.map((e)){
    var r = e.replaceAll('a', 'x');

  }*/

  //generate, preencher de forma aleatoria
  List<int> numeros = List<int>.generate{

    10,(i) => Random().nextInt(i + 1)*Random().nextInt(10);

    print(numeros);

    t = numeros.reduce(soma, elemento) => soma + elemento;
    //reduce, recebe uma funcao a 
    //dois parametros, recebe 
    
  }

  //fold tem um valor inicial
}
