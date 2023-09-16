import 'package:flutter/material.dart';
import 'package:rater/pages/rating_screen.dart';

class Sabitler {
  static String oppieText =
      "  2000’li yılların en popüler yönetmenlerinden biri olan ve kimilerine göre farklı türde başyapıtlar ortaya çıkararak yeni Kubrick unvanını hak eden Christopher Nolan, yeni filmi Oppenheimer’la sinemalardaki yerini aldı. Atom bombasının icadının öncesi ve sonrasında yaşananları, bombanın mucidi J. Robert Oppenhemier’ın gözünden anlatan film";

  static String ebText =
      "  Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. Shawsank Hapishanesi'nde dayak, işkence, tecavüz, her türlü durum yaşanmaktadır fakat Andy gene de hayata bağlı ve iyimserdir. Bu tutumu etrafındakileri de etkiler. Andy umutlu bakış açısıyla çevresindeki tüm mahkumları, parmaklıklar arkasında bile özgür bir yaşam olabileceğine inandırır. Andy'nin bu çabalarına ortak olacak bir arkadaşı da olacaktır: Red.Bir Stephen King uyarlaması olan filmde Morgan Freeman ve Tim Robbins başrolde. Film, 1995'te, aralarında en iyi film adaylığı da olmak üzere tam 7 dalda Oscar'a aday gösterildi.";

  static String babaText =
      "  Baba, 40’lar ve 50’lerin Amerika’sında, bir İtalyan mafya ailesinin destansı öyküsünü konu alıyor. Don Corleone’nin kızı Connie’nin düğününde, ailenin en küçük oğlu ve bir savaş gazisi olan Michael babasıyla barışır. Bir suikast girişimi, Don’u artık işleri yönetemeyecek duruma düşürünce, ailenin başına Michael ve ağabeyi Sonny geçer. Danışmanları Tom Hagen’in de yardımlarıyla diğer ailelere savaş açan Corleone ailesi, eski moda yöntemleri de değiştirmeye başlar. Mario Puzo’nun çok satan kitabından Puzo ve yönetmen Francis Ford Coppola tarafından sinemaya uyarlanan film o yıl En İyi Film, En İyi Erkek Oyuncu ve En İyi Uyarlama Senaryo dallarında Oscar kazanmıştır. Yapılan araştırmalar sonucu Türkiye'de en fazla izlenen ve satılan film olma özelliği de taşır.";

  static String fG =
      "  Forrest Gump, düşük I.Q. sahibi genç bir adamdır. Jenny ile tanıştığında ona aşık olur. Gump aralarında Elvis Presley, Kennedy, Nixon’ın da olduğu tarihsel kişilerle kaza eseri tanışır ve 50’lerden 70’lerin sonuna kadar gelen bir süre zarfında olaylar gelişir. Gump tamamen tesadüf olarak Vietnam savaşına ve Amerikan yakın tarihinin önemli olaylarına şahitlik eder ve hatta rol alır. Ancak bilmeden yaptıklarının ne kadar önemli sonuçları olduğundan da haberi yoktur.";
}

// ignore: must_be_immutable
class ContainerView extends StatefulWidget {
  final String image;
  final String? movieTitle;
  final String movieText;
  final ThemeData newTheme;
  const ContainerView(
      {required this.image,
      this.movieTitle,
      required this.movieText,
      required this.newTheme});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: widget.newTheme.focusColor,
            ),
          ),
          height: height * 0.24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  widget.image,
                  height: 250,
                  fit: BoxFit.fill,
                  width: 10,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movieTitle ?? "",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          widget.movieText,
                          style: widget.newTheme.textTheme.bodyLarge,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RatingScreen(
                                filmImage: widget.image,
                                filmName: widget.movieTitle,
                                filmText: widget.movieText,
                                currentTheme: widget.newTheme,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "Devamını gör",
                          textAlign: TextAlign.end,
                          style: widget.newTheme.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
