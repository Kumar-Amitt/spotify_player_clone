import 'dart:convert';

class Song {
  String name;
  String playUrl;
  String imageUrl;
  String artistName;

  Song(this.name, this.playUrl, this.imageUrl, this.artistName);
}

class SongData {
  List<Song> songs = [];
  static String songJSON = """
[
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/4YRxDV8wJFPHPTeXepOstw"
        },
        "href": "https://api.spotify.com/v1/artists/4YRxDV8wJFPHPTeXepOstw",
        "id": "4YRxDV8wJFPHPTeXepOstw",
        "name": "Arijit Singh",
        "type": "artist",
        "uri": "spotify:artist:4YRxDV8wJFPHPTeXepOstw"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/19LIHDDSHBD5NyYHI3gpzB"
        },
        "href": "https://api.spotify.com/v1/artists/19LIHDDSHBD5NyYHI3gpzB",
        "id": "19LIHDDSHBD5NyYHI3gpzB",
        "name": "Shilpa Rao",
        "type": "artist",
        "uri": "spotify:artist:19LIHDDSHBD5NyYHI3gpzB"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/0f7b2d03b2e3642de6890bceeffc722d2d84a27d",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/dcfe7700d7ecd80775a096b747dab4601c92ff02",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/1434e3cbc1123b7604d3161ef22d54a72874f118",
        "width": 64
      }
    ],
    "name": "Ghungroo (From War)",
    "preview_url": "https://p.scdn.co/mp3-preview/104f294da4d8b1389e6afc9b1e8e24d14eff6841?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0y59o4v8uw5crbN9M3JiL1"
        },
        "href": "https://api.spotify.com/v1/artists/0y59o4v8uw5crbN9M3JiL1",
        "id": "0y59o4v8uw5crbN9M3JiL1",
        "name": "Badshah",
        "type": "artist",
        "uri": "spotify:artist:0y59o4v8uw5crbN9M3JiL1"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/d31a17a393f08bbf92b5aedf130b0a286d87f69a",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/42a044c392da2f60531ec8866deb27292d4078b1",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/2ebcf32c39a051d2ed1b21cd3e9dfb608efbdbfc",
        "width": 64
      }
    ],
    "name": "Paagal",
    "preview_url": "https://p.scdn.co/mp3-preview/d496c189438a35d7885059a0e23361a363ba7d90?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/6WOdPJmexxFINcKMkP2jMG"
        },
        "href": "https://api.spotify.com/v1/artists/6WOdPJmexxFINcKMkP2jMG",
        "id": "6WOdPJmexxFINcKMkP2jMG",
        "name": "Sachet Tandon",
        "type": "artist",
        "uri": "spotify:artist:6WOdPJmexxFINcKMkP2jMG"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1SyKki7JI1AZNKwgNMkn25"
        },
        "href": "https://api.spotify.com/v1/artists/1SyKki7JI1AZNKwgNMkn25",
        "id": "1SyKki7JI1AZNKwgNMkn25",
        "name": "Sachet-Parampara",
        "type": "artist",
        "uri": "spotify:artist:1SyKki7JI1AZNKwgNMkn25"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/c6dfd8369621a563355a47e753a3761127128079",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/bdefaddd9324b70589e8cbb918e5dd780c8da0f7",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/245a06acf872f72b2b84ba625c4cb1f6cb1955d1",
        "width": 64
      }
    ],
    "name": "Bekhayali (From Kabir Singh)",
    "preview_url": "https://p.scdn.co/mp3-preview/5de297ed4b4d56c6d6465f8f6a8f3e2421baaf73?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/96354cd6189c39c51d024ca364362be5a8fac741",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/691f0838886c4295cb16cac0814ee6ca95dde013",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/972f7cd56c03ae95477ee4797f37bbaeec048df9",
        "width": 64
      }
    ],
    "name": "Ve Maahi",
    "preview_url": "https://p.scdn.co/mp3-preview/ffc18a5da84ad86349072e28cc8b0aa0e3657e05?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1OPqAyxsQc8mcRmoNBAnVk"
        },
        "href": "https://api.spotify.com/v1/artists/1OPqAyxsQc8mcRmoNBAnVk",
        "id": "1OPqAyxsQc8mcRmoNBAnVk",
        "name": "Dhvani Bhanushali",
        "type": "artist",
        "uri": "spotify:artist:1OPqAyxsQc8mcRmoNBAnVk"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/39fT56OHEL2E98zDKrqBsC"
        },
        "href": "https://api.spotify.com/v1/artists/39fT56OHEL2E98zDKrqBsC",
        "id": "39fT56OHEL2E98zDKrqBsC",
        "name": "Nikhil D'Souza",
        "type": "artist",
        "uri": "spotify:artist:39fT56OHEL2E98zDKrqBsC"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/4f7KfxeHq9BiylGmyXepGt"
        },
        "href": "https://api.spotify.com/v1/artists/4f7KfxeHq9BiylGmyXepGt",
        "id": "4f7KfxeHq9BiylGmyXepGt",
        "name": "Tanishk Bagchi",
        "type": "artist",
        "uri": "spotify:artist:4f7KfxeHq9BiylGmyXepGt"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/d3d31469e9f15022ff4ec1388ce73f2fc8ee2d41",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/2931c57d419ecdea0a7173fd1573cc3b56f03c77",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/8a4dd0cf9433724ddad27f13d014c23784eac35e",
        "width": 64
      }
    ],
    "name": "Vaaste",
    "preview_url": "https://p.scdn.co/mp3-preview/bbb19295d8390e387412c106877994791cc2e9b0?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/ab67616d0000b2730ade666ec2646bda148e3879",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/ab67616d00001e020ade666ec2646bda148e3879",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/ab67616d000048510ade666ec2646bda148e3879",
        "width": 64
      }
    ],
    "name": "Koka (From Khandaani Shafakhana)",
    "preview_url": "https://p.scdn.co/mp3-preview/a3ec9a2cd4d8e78fe5bf728d64ab4f8edf597dd1?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/62b5004a1e390d8fab8bdef450dd4845936364bc",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/3790ffc7806adb1aa5c1f9605b675f68b693fc14",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/0670bc97d011053c265b76841550375f8aac7057",
        "width": 64
      }
    ],
    "name": "Tujhe Kitna Chahne Lage",
    "preview_url": "https://p.scdn.co/mp3-preview/e5dbd98555a85f8704f861dfcf122333f183f562?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0NZtn1Kyq08alpHCTRf3dv"
        },
        "href": "https://api.spotify.com/v1/artists/0NZtn1Kyq08alpHCTRf3dv",
        "id": "0NZtn1Kyq08alpHCTRf3dv",
        "name": "Tony Kakkar",
        "type": "artist",
        "uri": "spotify:artist:0NZtn1Kyq08alpHCTRf3dv"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/43dd3940c46b18c511c4c43bddc93eb16e6b0869",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/d1287a6d7c65312c0f8fcd782fca8c4c77271c22",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/df022e2ab905a923b4b16a0049289f415bb81ee2",
        "width": 64
      }
    ],
    "name": "Dheeme Dheeme",
    "preview_url": "https://p.scdn.co/mp3-preview/e043f2db70ec426401a3a23e227eee92a4313b74?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/f218335b215402cc2fb3b8d92652ebad48458805",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/67241312b46bc54c43e765041564fccdfe9f5182",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/fd64ca9a1a5571690bbaf212eda8cba2bef8e666",
        "width": 64
      }
    ],
    "name": "Duniyaa (From Luka Chuppi)",
    "preview_url": "https://p.scdn.co/mp3-preview/4efd033217aa13f4625d37f95efa676fb02d4778?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/4YRxDV8wJFPHPTeXepOstw"
        },
        "href": "https://api.spotify.com/v1/artists/4YRxDV8wJFPHPTeXepOstw",
        "id": "4YRxDV8wJFPHPTeXepOstw",
        "name": "Arijit Singh",
        "type": "artist",
        "uri": "spotify:artist:4YRxDV8wJFPHPTeXepOstw"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1wRPtKGflJrBx9BmLsSwlU"
        },
        "href": "https://api.spotify.com/v1/artists/1wRPtKGflJrBx9BmLsSwlU",
        "id": "1wRPtKGflJrBx9BmLsSwlU",
        "name": "Pritam",
        "type": "artist",
        "uri": "spotify:artist:1wRPtKGflJrBx9BmLsSwlU"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/dd8a617bb6fc56824af4c2087c8e6856ea3561db",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/147a6b32ba225c9de24320dd9a12ebaebfe6192c",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/7d831d661e414f250952d6674013e8165ea3805b",
        "width": 64
      }
    ],
    "name": "Kalank (Title Track)",
    "preview_url": null
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/62b5004a1e390d8fab8bdef450dd4845936364bc",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/3790ffc7806adb1aa5c1f9605b675f68b693fc14",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/0670bc97d011053c265b76841550375f8aac7057",
        "width": 64
      }
    ],
    "name": "Mere Sohneya",
    "preview_url": "https://p.scdn.co/mp3-preview/b2b5d30f9c13a2632f3f5a275b27be41cee04540?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/521ecc73f8f43c7b3e468b258d62bac14e224755",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/62f21da04e4e23013340591ee42a8cb316be3038",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/23cc99b31d4fcc2159b40ae273a89bbc6fa7e374",
        "width": 64
      }
    ],
    "name": "Suit Suit",
    "preview_url": "https://p.scdn.co/mp3-preview/e98307f9a721bbcd85d2b22d196ea4cada42e480?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/4e7b81d422c61fe493f2c32cf83c9b1f22109851",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/7add48af97c6dad950a4f47c485b28a938f9fa5e",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/e67635926509d83044595d137652c8c93f761764",
        "width": 64
      }
    ],
    "name": "Hauli Hauli (From De De Pyaar De)",
    "preview_url": "https://p.scdn.co/mp3-preview/5b9ebff38bb01d33b8bb2ec0716500e14ff164e7?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1mYsTxnqsietFxj1OgoGbG"
        },
        "href": "https://api.spotify.com/v1/artists/1mYsTxnqsietFxj1OgoGbG",
        "id": "1mYsTxnqsietFxj1OgoGbG",
        "name": "A.R. Rahman",
        "type": "artist",
        "uri": "spotify:artist:1mYsTxnqsietFxj1OgoGbG"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/ab67616d0000b2737f59a7efcdad7a7b22d87878",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/ab67616d00001e027f59a7efcdad7a7b22d87878",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/ab67616d000048517f59a7efcdad7a7b22d87878",
        "width": 64
      }
    ],
    "name": "The Humma Song",
    "preview_url": "https://p.scdn.co/mp3-preview/d717085307608af8198114d0ce3e9d9c4bc78d2d?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/2GoeZ0qOTt6kjsWW4eA6LS"
        },
        "href": "https://api.spotify.com/v1/artists/2GoeZ0qOTt6kjsWW4eA6LS",
        "id": "2GoeZ0qOTt6kjsWW4eA6LS",
        "name": "Darshan Raval",
        "type": "artist",
        "uri": "spotify:artist:2GoeZ0qOTt6kjsWW4eA6LS"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/ab67616d0000b273816f135984166ef48e5192a5",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/ab67616d00001e02816f135984166ef48e5192a5",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/ab67616d00004851816f135984166ef48e5192a5",
        "width": 64
      }
    ],
    "name": "Kaash Aisa Hota",
    "preview_url": "https://p.scdn.co/mp3-preview/decc3e928cb92d98b335f3b9adfcaccf14b1a2ec?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0y59o4v8uw5crbN9M3JiL1"
        },
        "href": "https://api.spotify.com/v1/artists/0y59o4v8uw5crbN9M3JiL1",
        "id": "0y59o4v8uw5crbN9M3JiL1",
        "name": "Badshah",
        "type": "artist",
        "uri": "spotify:artist:0y59o4v8uw5crbN9M3JiL1"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/ab67616d0000b273f78d8d3dd6f83183ec4309e2",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/ab67616d00001e02f78d8d3dd6f83183ec4309e2",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/ab67616d00004851f78d8d3dd6f83183ec4309e2",
        "width": 64
      }
    ],
    "name": "Mercy",
    "preview_url": "https://p.scdn.co/mp3-preview/3ce90af8c8f797c99152e8893ebfa2a92ff116be?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/9317ba48e9fbab7d24d85c7a7c2ca38a6158cdd9",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/c85b29746f3ab93d2f14ffc850fcf4ca18a46106",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/cb7b0a33ffda9c421089bebdfc4446880182db1d",
        "width": 64
      }
    ],
    "name": "Coca Cola (From Luka Chuppi)",
    "preview_url": "https://p.scdn.co/mp3-preview/34eb5f1d0ed02f7322c10a8558f05517b4d97085?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/6Mv8GjQa7LKUGCAqa9qqdb"
        },
        "href": "https://api.spotify.com/v1/artists/6Mv8GjQa7LKUGCAqa9qqdb",
        "id": "6Mv8GjQa7LKUGCAqa9qqdb",
        "name": "Vishal-Shekhar",
        "type": "artist",
        "uri": "spotify:artist:6Mv8GjQa7LKUGCAqa9qqdb"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/fc6e3c1ae3f73a544550900fe3ee536a37b1a5fb",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/87df3d8c3600ecf56dbd12c45014f52a05614a10",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/b036191f28018d299fb87c40d8bb7baef6c68497",
        "width": 64
      }
    ],
    "name": "The Jawaani Song",
    "preview_url": "https://p.scdn.co/mp3-preview/c628517fd154141c51e5def6a614f213f4216390?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
        },
        "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
        "id": "0LyfQWJT6nXafLPZqxe9Of",
        "name": "Various Artists",
        "type": "artist",
        "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/98166a486d081c1fa514cece85fc3081b4bb07cc",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/750676b77e30581c9ff502fe1240b86afba87142",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/8c699de58d22e01ef089c6492c570e080c2d0ea6",
        "width": 64
      }
    ],
    "name": "Aankh Marey",
    "preview_url": "https://p.scdn.co/mp3-preview/9468ab9bf6d307edd158467dc8190f7069ce21c4?cid=774b29d4f13844c495f206cafdad9c86"
  },
  {
    "artists": [
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/4f7KfxeHq9BiylGmyXepGt"
        },
        "href": "https://api.spotify.com/v1/artists/4f7KfxeHq9BiylGmyXepGt",
        "id": "4f7KfxeHq9BiylGmyXepGt",
        "name": "Tanishk Bagchi",
        "type": "artist",
        "uri": "spotify:artist:4f7KfxeHq9BiylGmyXepGt"
      },
      {
        "external_urls": {
          "spotify": "https://open.spotify.com/artist/1zrFFDzoE9XXyjEqqgDpMm"
        },
        "href": "https://api.spotify.com/v1/artists/1zrFFDzoE9XXyjEqqgDpMm",
        "id": "1zrFFDzoE9XXyjEqqgDpMm",
        "name": "Dr Zeus",
        "type": "artist",
        "uri": "spotify:artist:1zrFFDzoE9XXyjEqqgDpMm"
      }
    ],
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/2a99932f4389c1932b8a1b17462b5bb8931b354b",
        "width": 640
      },
      {
        "height": 300,
        "url": "https://i.scdn.co/image/1c3c0f75de69e7ef365c89533b5192d91f6c04f8",
        "width": 300
      },
      {
        "height": 64,
        "url": "https://i.scdn.co/image/b8569e5bf3f8fc1ec4faf754c199daf11d8d96a9",
        "width": 64
      }
    ],
    "name": "Cheez Badi",
    "preview_url": null
  }
]
""";
  List data = jsonDecode(songJSON);

  SongData() {
    data.forEach((songMap) {

      songs.add(Song(songMap['name'], songMap['preview_url'],
          songMap['images'][0]['url'], songMap['artists'][0]['name']));
    });
  }
}
