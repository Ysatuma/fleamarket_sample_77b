# 自動車・オートバイ
cars = Category.create(name: "自動車・オートバイ")

cars_bodies = cars.children.create(name: "自動車本体")
cars_bodies.children.create([
  {name: "国内自動車本体"},
  {name: "外国自動車本体"}
])

cars_tires = cars.children.create(name: "自動車タイヤ/ホイール")
cars_tires.children.create([
  {name: "タイヤ/ホイールセット"},
  {name: "タイヤ"},
  {name: "ホイール"},
  {name: "その他"}
])

cars_parts = cars.children.create(name: "自動車パーツ")
cars_parts.children.create([
  {name: "サスペンション"},
  {name: "ブレーキ"},
  {name: "外装、エアロパーツ"},
  {name: "ライト"},
  {name: "内装品、シート"},
  {name: "ステアリング"},
  {name: "マフラー・排気系"},
  {name: "エンジン、過給器、冷却装置"},
  {name: "クラッチ、ミッション、駆動系"},
  {name: "電装品"},
  {name: "補強パーツ"},
  {name: "汎用パーツ"},
  {name: "外国自動車用パーツ"},
  {name: "その他"}
])

cars_accesorries = cars.children.create(name: "自動車アクセサリー")
cars_accesorries.children.create([
  {name: "車内アクセサリー"},
  {name: "カーナビ"},
  {name: "カーオーディオ"},
  {name: "車外アクセサリー"},
  {name: "メンテナンス用品"},
  {name: "チャイルドシート"},
  {name: "ドライブレコーダー"},
  {name: "レーダー探知機"},
  {name: "カタログ/マニュアル"},
  {name: "セキュリティ"},
  {name: "ETC"},
  {name: "その他"}
])

cars_motorcycleBodies = cars.children.create(name: "オートバイ車体")

cars_motorcycleParts = cars.children.create(name: "オートバイパーツ")
cars_motorcycleParts.children.create([
  {name: "タイヤ"},
  {name: "マフラー"},
  {name: "エンジン、冷却装置"},
  {name: "カウル、フェンダー、外装"},
  {name: "サスペンション"},
  {name: "ホイール"},
  {name: "シート"},
  {name: "ブレーキ"},
  {name: "タンク"},
  {name: "ライト、ウィンカー"},
  {name: "チェーン、スプロケット、駆動系"},
  {name: "メーター"},
  {name: "電装系"},
  {name: "ミラー"},
  {name: "外国オートバイ用パーツ"},
  {name: "その他"}
])

cars_moterAccessories = cars.children.create(name: "オートバイアクセサリー")
cars_moterAccessories.children.create([
  {name: "ヘルメット/シールド"},
  {name: "バイクウエア/装備"},
  {name: "アクセサリー"},
  {name: "メンテナンス"},
  {name: "カタログ/マニュアル"},
  {name: "その他"}
])