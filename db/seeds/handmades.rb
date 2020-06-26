# ハンドメイド
handmades = Category.create(name: "ハンドメイド")

handmades_accessories = handmades.children.create(name: "アクセサリー(女性用)")
handmades_accessories.children.create([
  {name: "ピアス"},
  {name: "イヤリング"},
  {name: "ネックレス"},
  {name: "ブレスレット"},
  {name: "リング"},
  {name: "チャーム"},
  {name: "ヘアゴム"},
  {name: "アンクレット"},
  {name: "その他"}
])

handmades_fashions = handmades.children.create(name: "ファッション/小物")
handmades_fashions.children.create([
  {name: "バッグ(女性用)"},
  {name: "バッグ(男性用)"},
  {name: "財布(女性用)"},
  {name: "財布(男性用)"},
  {name: "ファッション雑貨"},
  {name: "その他"}
])

handmades_watches = handmades.children.create(name: "アクセサリー/時計")
handmades_watches.children.create([
  {name: "アクセサリー(男性用)"},
  {name: "時計(女性用)"},
  {name: "時計(男性用)"},
  {name: "その他"}
])

handmades_interiors = handmades.children.create(name: "日用品/インテリア")
handmades_interiors.children.create([
  {name: "キッチン用品"},
  {name: "家具"},
  {name: "文房具"},
  {name: "アート/写真"},
  {name: "アロマ/キャンドル"},
  {name: "フラワー/ガーデン"},
  {name: "その他"}
])

handmades_hobbies = handmades.children.create(name: "趣味/おもちゃ")
handmades_hobbies.children.create([
  {name: "クラフト/布製品"},
  {name: "おもちゃ/人形"},
  {name: "その他"}
])

handmades_kids = handmades.children.create(name: "キッズ/ベビー")
handmades_kids.children.create([
  {name: "ファッション雑貨"},
  {name: "スタイ/よだれかけ"},
  {name: "外出用品"},
  {name: "ネームタグ"},
  {name: "その他"}
])

handmades_materials = handmades.children.create(name: "素材/材料")
handmades_materials.children.create([
  {name: "各種パーツ"},
  {name: "生地/糸"},
  {name: "型紙/パターン"},
  {name: "その他"}
])

handmades_derivatives = handmades.children.create(name: "二次創作物")
handmades_derivatives.children.create([
  {name: "Ingress"},
  {name: "クリエイターズ宇宙兄弟"},
  {name: "シンデレラガールズCPグッズ"},
  {name: "その他"}
])