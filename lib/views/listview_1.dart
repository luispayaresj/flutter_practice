import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {

  ListView1({Key? key}) : super(key: key);
  final List<Map<String, String>> _games = [
    {
    "image":
    "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
    "name": "Roblox"
    },
    {
    "image":
    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
    "name": "Silent Hills"
    },
    {
    "image":
    "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
    "name": "Forza Horizon 5"
    }, 
    {
    "image":
    "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
    "name": "Roblox"
    },
    {
    "image":
    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
    "name": "Silent Hills"
    },
    {
    "image":
    "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
    "name": "Forza Horizon 5"
    }, 
    {
    "image":
    "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
    "name": "Roblox"
    },
    {
    "image":
    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
    "name": "Silent Hills"
    },
    {
    "image":
    "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
    "name": "Forza Horizon 5"
    },
    {
    "image":
    "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
    "name": "Roblox"
    },
    {
    "image":
    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
    "name": "Silent Hills"
    },
    {
    "image":
    "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
    "name": "Forza Horizon 5"
    }, 
    {
    "image":
    "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
    "name": "Roblox"
    },
    {
    "image":
    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
    "name": "Silent Hills"
    },
    {
    "image":
    "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
    "name": "Forza Horizon 5"
    }, 
    {
    "image":
    "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
    "name": "Roblox"
    },
    {
    "image":
    "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
    "name": "Silent Hills"
    },
    {
    "image":
    "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
    "name": "Forza Horizon 5"
    }, 
  ];


  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    appBar: AppBar(
      title: const Text('Lista de Texto'),
    ),
  body: ListView.builder(
      itemCount: _games.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_,index){
        return ListTile(
          
          leading:CircleAvatar(backgroundImage: Image.network(_games[index]["image"]!).image) ,
          title:Text(_games[index]["name"]!),
          onTap: () => showDialog<Image>(
            context:context,
            builder:(BuildContext context) => AlertDialog(
              title:Text(_games[index]["name"]!),
              content:Image(image:Image.network(_games[index]["image"]!).image,
            )
          ))
          /* 
          leading: GestureDetector(
            onTap: () {
              var snackBar = SnackBar(
                content: Image(
                  image: Image.network(_games[index]["image"]!).image
                )
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: CircleAvatar(
            backgroundImage: Image.network(_games[index]["image"]!).image
          ),
          ),
          
          title: GestureDetector(
            onTap: () {
              var snackBar = SnackBar(
                content: Image(
                  image: Image.network(_games[index]["image"]!).image
                )
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Stack(
              children:[
                Text(_games[index]["name"]!),
              ],
            )
          ) */
        );
        
      }
    
  )
  );
  }
}