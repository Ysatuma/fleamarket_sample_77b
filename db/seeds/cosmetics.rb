# コスメ・香水・美容
cosmetics = Category.create(name: "コスメ・香水・美容")

cosmetics_bases = cosmetics.children.create(name: "ベースメイク")
cosmetics_bases.children.create([
  {name: "ファンデーション"},
  {name: "化粧下地"},
  {name: "コントロールカラー"},
  {name: "BBクリーム"},
  {name: "CCクリーム"},
  {name: "コンシーラー"},
  {name: "フェイスパウダー"},
  {name: "トライアルセット/サンプル"},
  {name: "その他"}
])

cosmetics_makeups = cosmetics.children.create(name: "メイクアップ")
cosmetics_makeups.children.create([
  {name: "アイシャドウ"},
  {name: "口紅"},
  {name: "リップグロス"},
  {name: "リップライナー"},
  {name: "チーク"},
  {name: "フェイスカラー"},
  {name: "マスカラ"},
  {name: "アイライナー"},
  {name: "つけまつげ"},
  {name: "アイブロウペンシル"},
  {name: "パウダーアイブロw"},
  {name: "眉マスカラ"},
  {name: "トライアルセット/サンプル"},
  {name: "メイク道具/化粧小物"},
  {name: "美顔用品/美顔ローラー"},
  {name: "その他"}
])

cosmetics_nails = cosmetics.children.create(name: "ネイルケア")
cosmetics_nails.children.create([
  {name: "ネイルケア"},
  {name: "カラージェル"},
  {name: "ネイルベースコート/トップコート"},
  {name: "ネイルアート用品"},
  {name: "ネイルパーツ"},
  {name: "ネイルチップ/付け爪"},
  {name: "手入れ用具"},
  {name: "除光液"},
  {name: "その他"}
])

cosmetics_perfumes = cosmetics.children.create(name: "香水")
cosmetics_perfumes.children.create([
  {name: "香水(女性用)"},
  {name: "香水(男性用)"},
  {name: "ユニセックス"},
  {name: "ボディミスト"},
  {name: "その他"}
])

cosmetics_skins = cosmetics.children.create(name: "スキンケア/基礎化粧品")
cosmetics_skins.children.create([
  {name: "化粧水/ローション"},
  {name: "乳液/ミルク"},
  {name: "美容液"},
  {name: "フェイスクリーム"},
  {name: "洗顔料"},
  {name: "クレンジング/メイク落とし"},
  {name: "パック/フェイスマスク"},
  {name: "ジェル/ゲル"},
  {name: "ブースター/導入液"},
  {name: "アイケア"},
  {name: "リップケア"},
  {name: "トライアルセット/センプル"},
  {name: "洗顔グッズ"},
  {name: "その他"}
])

cosmetics_hairs = cosmetics.children.create(name: "ヘアケア")
cosmetics_hairs.children.create([
  {name: "シャンプー"},
  {name: "トリートメント"},
  {name: "コンディショナー"},
  {name: "リンス"},
  {name: "スタイリング剤"},
  {name: "カラーリング剤"},
  {name: "ブラシ"},
  {name: "その他"}
])

cosmetics_bodies = cosmetics.children.create(name: "ボディケア")
cosmetics_bodies.children.create([
  {name: "オイル/クリーム"},
  {name: "ハンドクリーム"},
  {name: "ローション"},
  {name: "日焼け止め/サンオイル"},
  {name: "ボディソープ"},
  {name: "入浴剤"},
  {name: "制汗/デオドラント"},
  {name: "フットケア"},
  {name: "その他"}
])

cosmetics_orals = cosmetics.children.create(name: "オーラルケア")
cosmetics_orals.children.create([
  {name: "口臭防止/エチケット用品"},
  {name: "歯ブラシ"},
  {name: "その他"}
])

cosmetics_relaxations = cosmetics.children.create(name: "リラクゼーション")
cosmetics_relaxations.children.create([
  {name: "エッセンシャルオイル"},
  {name: "芳香器"},
  {name: "お香/香炉"},
  {name: "キャンドル"},
  {name: "リラクゼーショングッズ"},
  {name: "その他"}
])

cosmetics_diets = cosmetics.children.create(name: "ダイエット")
cosmetics_diets.children.create([
  {name: "ダイエット食品"},
  {name: "エクササイズ用品"},
  {name: "体重計"},
  {name: "体脂肪計"},
  {name: "その他"}
])

cosmetics_others = cosmetics.children.create(name: "その他")
cosmetics_others.children.create([
  {name: "健康用品"},
  {name: "看護/介護用品"},
  {name: "救急/衛生用品"},
  {name: "その他"}
])