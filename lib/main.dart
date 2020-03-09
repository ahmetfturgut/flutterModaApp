import 'package:flutter/material.dart';
import 'package:ornek_proje/detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                  size: 22,
                ),
              )
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.camera_alt),
              color: Colors.grey,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          //Üst Liste
          Container(
            // color: Colors.blue.shade200,
            height: 140,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemanlari('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemanlari(
                    'assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemanlari('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemanlari(
                    'assets/model1.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemanlari(
                    'assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemanlari('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemanlari(
                    'assets/model1.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemanlari(
                    'assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemanlari('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemanlari(
                    'assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              // color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(20),
              elevation: 4,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 520,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage('assets/model3.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("23 Dk önce",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune"
                      " kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı"
                      " 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır."
                      " Beşyüz yıl boyunca varlığını sürdürmekle kalmamış,",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    imagePath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imagePath: "assets/modelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imagePath: "assets/modelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid3.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "data",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.4),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "1.7k",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        ),
                        SizedBox(width: 30),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.4),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "325",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 215,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "3.5k",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listeElemanlari(String image, String logo) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text(
              "Takip",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
