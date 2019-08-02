import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static final List<Location> items = [
    Location(
        name: 'My little pony LIVE',
        imgUrl:
            'https://www.billboard.com/files/styles/article_main_image/public/media/My-LIttle-Pony-Live-banner-1548.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Generación 1',
              text:
                  'En 1983 aparece por primera vez My Little Pony, debido al éxito de My Pretty Pony fue trasladado a Hasbro, pero eran más pequeños que sus antecesores pero con la misma pose. Los primeros eran colores pasteles, y la crin era una especie de melena, cada una tenía marcas en el flanco diferentes en cada lado.'),
          LocationFact(
              title: 'Generación 2 (Jardines de la Amistad)',
              text:
                  'La Generación 2 o G2 comenzó a venderse en 1997, había cambiado el diseño porque eran más delgadas y tenían ojos de cristal y arcoiris en las patas pero el nuevo diseño no atrajo mucho a los Fans ni a la gente provocando pérdida de fans y en ventas. En 1999 Hasbro toma la decisión que se dejarán de seguir de crear y producir mas Ponis de esta generación pero en otros países siguieron sobreviviendo hasta el 2000 y 2001 y en Europa hasta el 2003 de ellos hubo accesorios, castillos y algunos unicornios y pegasos tenían las alas que se podían sacar y poner. En 1998 Hasbro Interactive lanza un CD-ROM Interactivo llamado «My Little Pony: Frendship Gardens» cual fue un aliento para que siguieran lanzando más ponis de la G2.'),
        ]),
    Location(
        name: 'My little pony LIVE',
        imgUrl:
            'https://www.billboard.com/files/styles/article_main_image/public/media/My-LIttle-Pony-Live-banner-1548.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Generación 1',
              text:
                  'En 1983 aparece por primera vez My Little Pony, debido al éxito de My Pretty Pony fue trasladado a Hasbro, pero eran más pequeños que sus antecesores pero con la misma pose. Los primeros eran colores pasteles, y la crin era una especie de melena, cada una tenía marcas en el flanco diferentes en cada lado.'),
          LocationFact(
              title: 'Generación 2 (Jardines de la Amistad)',
              text:
                  'La Generación 2 o G2 comenzó a venderse en 1997, había cambiado el diseño porque eran más delgadas y tenían ojos de cristal y arcoiris en las patas pero el nuevo diseño no atrajo mucho a los Fans ni a la gente provocando pérdida de fans y en ventas. En 1999 Hasbro toma la decisión que se dejarán de seguir de crear y producir mas Ponis de esta generación pero en otros países siguieron sobreviviendo hasta el 2000 y 2001 y en Europa hasta el 2003 de ellos hubo accesorios, castillos y algunos unicornios y pegasos tenían las alas que se podían sacar y poner. En 1998 Hasbro Interactive lanza un CD-ROM Interactivo llamado «My Little Pony: Frendship Gardens» cual fue un aliento para que siguieran lanzando más ponis de la G2.'),
        ]),
    Location(
        name: 'My little pony LIVE',
        imgUrl:
            'https://www.billboard.com/files/styles/article_main_image/public/media/My-LIttle-Pony-Live-banner-1548.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Generación 1',
              text:
                  'En 1983 aparece por primera vez My Little Pony, debido al éxito de My Pretty Pony fue trasladado a Hasbro, pero eran más pequeños que sus antecesores pero con la misma pose. Los primeros eran colores pasteles, y la crin era una especie de melena, cada una tenía marcas en el flanco diferentes en cada lado.'),
          LocationFact(
              title: 'Generación 2 (Jardines de la Amistad)',
              text:
                  'La Generación 2 o G2 comenzó a venderse en 1997, había cambiado el diseño porque eran más delgadas y tenían ojos de cristal y arcoiris en las patas pero el nuevo diseño no atrajo mucho a los Fans ni a la gente provocando pérdida de fans y en ventas. En 1999 Hasbro toma la decisión que se dejarán de seguir de crear y producir mas Ponis de esta generación pero en otros países siguieron sobreviviendo hasta el 2000 y 2001 y en Europa hasta el 2003 de ellos hubo accesorios, castillos y algunos unicornios y pegasos tenían las alas que se podían sacar y poner. En 1998 Hasbro Interactive lanza un CD-ROM Interactivo llamado «My Little Pony: Frendship Gardens» cual fue un aliento para que siguieran lanzando más ponis de la G2.'),
        ])
  ];

  static Location fetchAny() {
    return MockLocation.items[0];
  }

  static List<Location> fetchAll() {
    return MockLocation.items;
  }
}
