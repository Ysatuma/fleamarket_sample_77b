# チケット
tikets = Category.create(name: "チケット")

tikets_musics = tikets.children.create(name: "音楽")
tikets_musics.children.create([
  {name: "男性アイドル"},
  {name: "女性アイドル"},
  {name: "韓流"},
  {name: "国内アーティスト"},
  {name: "海外アーティスト"},
  {name: "音楽フェス"},
  {name: "声優/アニメ"},
  {name: "その他"}
])

tikets_sports = tikets.children.create(name: "スポーツ")
tikets_sports.children.create([
  {name: "サッカー"},
  {name: "野球"},
  {name: "テニス"},
  {name: "格闘技/プロレス"},
  {name: "相撲/武道"},
  {name: "ゴルフ"},
  {name: "バレーボール"},
  {name: "バスケットボール"},
  {name: "モータースポーツ"},
  {name: "ウィンタースポーツ"},
  {name: "その他"}
])

tikets_theaters = tikets.children.create(name: "演劇/芸能")
tikets_theaters.children.create([
  {name: "ミュージカル"},
  {name: "演劇"},
  {name: "伝統芸能"},
  {name: "落語"},
  {name: "お笑い"},
  {name: "オペラ"},
  {name: "サーカス"},
  {name: "バレエ"},
  {name: "その他"}
])

tikets_events = tikets.children.create(name: "イベント")
tikets_events.children.create([
  {name: "声優/アニメ"},
  {name: "キッズ/ファミリー"},
  {name: "トークショー/講演会"},
  {name: "その他"}
])

tikets_movies = tikets.children.create(name: "映画")
tikets_movies.children.create([
  {name: "邦画"},
  {name: "洋画"},
  {name: "その他"}
])

tikets_facilities = tikets.children.create(name: "施設利用券")
tikets_facilities.children.create([
  {name: "遊園地/テーマパーク"},
  {name: "美術館/博物館"},
  {name: "スキー場"},
  {name: "ゴルフ場"},
  {name: "フィットネスクラブ"},
  {name: "プール"},
  {name: "ボウリング場"},
  {name: "水族館"},
  {name: "動物園"},
  {name: "その他"}
])

tikets_discounts = tikets.children.create(name: "優待券/割引券")
tikets_discounts.children.create([
  {name: "ショッピング"},
  {name: "レストラン/食事券"},
  {name: "フード/ドリンク券"},
  {name: "宿泊券"},
  {name: "その他"}
])

tikets_others = tikets.children.create(name: "その他")