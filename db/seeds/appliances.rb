# 家電・スマホ・カメラ
appliances = Category.create(name: "家電・スマホ・カメラ")

appliances_phones = appliances.children.create(name: "スマートフォン/携帯電話")
appliances_phones.children.create([
  {name: "スマートフォン本体"},
  {name: "バッテリー/充電器"},
  {name: "携帯電話本体"},
  {name: "PHS本体"},
  {name: "その他"}
])

appliances_accessories = appliances.children.create(name: "スマホアクセサリー")
appliances_accessories.children.create([
  {name: "Android用ケース"},
  {name: "iPhone用ケース"},
  {name: "カバー"},
  {name: "イヤホンジャック"},
  {name: "ストラップ"},
  {name: "フィルム"},
  {name: "自撮り棒"},
  {name: "その他"}
])

appliances_computers = appliances.children.create(name: "PC/タブレット")
appliances_computers.children.create([
  {name: "タブレット"},
  {name: "ノートPC"},
  {name: "デスクトップ型PC"},
  {name: "ディスプレイ"},
  {name: "電子ブックリーダー"},
  {name: "PC周辺機器"},
  {name: "PCパーツ"},
  {name: "その他"}
])

appliances_cameras = appliances.children.create(name: "カメラ")
appliances_cameras.children.create([
  {name: "デジタルカメラ"},
  {name: "ビデオカメラ"},
  {name: "レンズ(単焦点)"},
  {name: "レンズ(ズーム)"},
  {name: "フィルムカメラ"},
  {name: "防犯カメラ"},
  {name: "その他"}
])

appliances_televisions = appliances.children.create(name: "テレビ/映像機器")
appliances_televisions.children.create([
  {name: "テレビ"},
  {name: "プロジェクター"},
  {name: "ブルーレイレコーダー"},
  {name: "DVDレコーダー"},
  {name: "ブルーレイプレーヤー"},
  {name: "DVDプレーヤー"},
  {name: "映像用ケーブル"},
  {name: "その他"}
])

appliances_audios = appliances.children.create(name: "オーディオ機器")
appliances_audios.children.create([
  {name: "ポータブルプレーヤー"},
  {name: "イヤフォン"},
  {name: "ヘッドフォン"},
  {name: "アンプ"},
  {name: "スピーカー"},
  {name: "ケーブル/シールド"},
  {name: "ラジオ"},
  {name: "その他"}
])

appliances_beauties = appliances.children.create(name: "美容/健康")
appliances_beauties.children.create([
  {name: "ヘアドライヤー"},
  {name: "ヘアアイロン"},
  {name: "美容機器"},
  {name: "電気シェーバー"},
  {name: "電動歯ブラシ"},
  {name: "その他"}
])

appliances_conditioners = appliances.children.create(name: "冷暖房/空調")
appliances_conditioners.children.create([
  {name: "エアコン"},
  {name: "空気洗浄機"},
  {name: "加湿器"},
  {name: "扇風機"},
  {name: "除湿機"},
  {name: "ファンヒーター"},
  {name: "電気ヒーター"},
  {name: "オイルヒーター"},
  {name: "ストーブ"},
  {name: "ホットカーペット"},
  {name: "こたつ"},
  {name: "電気毛布"},
  {name: "その他"}
])

appliances_houses = appliances.children.create(name: "生活家電")
appliances_houses.children.create([
  {name: "冷蔵庫"},
  {name: "洗濯機"},
  {name: "炊飯器"},
  {name: "電子レンジ/オーブン"},
  {name: "調理機器"},
  {name: "アイロン"},
  {name: "掃除機"},
  {name: "エスプレッソマシン"},
  {name: "コーヒーメーカー"},
  {name: "衣類乾燥機"},
  {name: "その他"}
])

appliances_others = appliances.children.create(name: "その他")
appliances_others.children.create([
  {name: "その他"}
])