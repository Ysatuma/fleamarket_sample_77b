# スポーツ・レジャー
sports = Category.create(name: "スポーツ・レジャー")

sports_golfs = sports.children.create(name: "ゴルフ")
sports_golfs.children.create([
  {name: "クラブ"},
  {name: "ウエア(男性用)"},
  {name: "ウエア(女性用)"},
  {name: "バッグ"},
  {name: "シューズ(男性用)"},
  {name: "シューズ(女性用)"},
  {name: "アクセサリー"},
  {name: "その他"}
])

sports_fishings = sports.children.create(name: "フィッシング")
sports_fishings.children.create([
  {name: "ロッド"},
  {name: "リール"},
  {name: "ルアー用品"},
  {name: "ウエア"},
  {name: "釣り糸/ライン"},
  {name: "その他"}
])

sports_bicycles = sports.children.create(name: "自転車")
sports_bicycles.children.create([
  {name: "自転車本体"},
  {name: "ウエア"},
  {name: "パーツ"},
  {name: "アクセサリー"},
  {name: "バッグ"},
  {name: "工具/メンテナンス"},
  {name: "その他"}
])

sports_trainings = sports.children.create(name: "トレーニング/エクササイズ")
sports_trainings.children.create([
  {name: "ランニング"},
  {name: "ウォーキング"},
  {name: "ヨガ"},
  {name: "トレーニング用品"},
  {name: "その他"}
])

sports_baseballs = sports.children.create(name: "野球")
sports_baseballs.children.create([
  {name: "ウェア"},
  {name: "シューズ"},
  {name: "グローブ"},
  {name: "バット"},
  {name: "アクセサリー"},
  {name: "防具"},
  {name: "練習機器"},
  {name: "記念グッズ"},
  {name: "応援グッズ"},
  {name: "その他"}
])

sports_soccers = sports.children.create(name: "サッカー/フットサル")
sports_soccers.children.create([
  {name: "ウェア"},
  {name: "シューズ"},
  {name: "ボール"},
  {name: "アクセサリー"},
  {name: "記念グッズ"},
  {name: "応援グッズ"},
  {name: "その他"}
])

sports_tennis = sports.children.create(name: "テニス")
sports_tennis.children.create([
  {name: "ラケット(硬式用)"},
  {name: "ラケット(軟式用)"},
  {name: "ウェア"},
  {name: "シューズ"},
  {name: "ボール"},
  {name: "アクセサリー"},
  {name: "記念グッズ"},
  {name: "応援グッズ"},
  {name: "その他"}
])

sports_snowboards = sports.children.create(name: "スノーボード")
sports_snowboards.children.create([
  {name: "ボード"},
  {name: "バインディング"},
  {name: "ブーツ(男性用)"},
  {name: "ブーツ(女性用)"},
  {name: "ブーツ(子ども用)"},
  {name: "ウエア/装備(男性用)"},
  {name: "ウエア/装備(女性用)"},
  {name: "ウエア/装備(子ども用)"},
  {name: "アクセサリー"},
  {name: "バッグ"},
  {name: "その他"}
])

sports_skis = sports.children.create(name: "スキー")
sports_skis.children.create([
  {name: "板"},
  {name: "ブーツ(男性用)"},
  {name: "ブーツ(女性用)"},
  {name: "ビンディング"},
  {name: "ウエア(男性用)"},
  {name: "ウエア(女性用)"},
  {name: "ウエア(子ども用)"},
  {name: "ストック"},
  {name: "その他"}
])

sports_othersports = sports.children.create(name: "その他スポーツ")
sports_othersports.children.create([
  {name: "ダンス/バレエ"},
  {name: "サーフィン"},
  {name: "バスケットボール"},
  {name: "バドミントン"},
  {name: "バレーボール"},
  {name: "スケートボード"},
  {name: "陸上競技"},
  {name: "ラグビー"},
  {name: "アメリカンフットボール"},
  {name: "ボクシング"},
  {name: "ボウリング"},
  {name: "その他"}
])

sports_outdoors = sports.children.create(name: "アウトドア")
sports_outdoors.children.create([
  {name: "テント/ターブ"},
  {name: "ライト/ランタン"},
  {name: "寝袋/寝具"},
  {name: "テーブル/チェア"},
  {name: "ストーブ/コンロ"},
  {name: "調理器具"},
  {name: "食器"},
  {name: "登山用品"},
  {name: "その他"}
])

sports_others = sports.children.create(name: "その他")
sports_others.children.create([
  {name: "旅行用品"},
  {name: "その他"}
])