
# ベビー・キッズ
baby_kids = Category.create(name: "ベビー・キッズ")

baby_kids_gsmall = baby_kids.children.create(name: "ベビー服(女の子用) ~95cm")
baby_kids_gsmall.children.create([
  {name: "トップス"}, 
  {name: "アウター"}, 
  {name: "パンツ"}, 
  {name: "スカート"}, 
  {name: "ワンピース"}, 
  {name: "ベビードレス"}, 
  {name: "おくるみ"}, 
  {name: "下着/肌着"}, 
  {name: "パジャマ"}, 
  {name: "ロンパース"}, 
  {name: "その他"}
])

baby_kids_bsmall = baby_kids.children.create(name: "ベビー服(男の子用) ~95cm")
baby_kids_bsmall.children.create([
  {name: "トップス"}, 
  {name: "アウター"}, 
  {name: "パンツ"}, 
  {name: "おくるみ"}, 
  {name: "下着/肌着"}, 
  {name: "パジャマ"}, 
  {name: "ロンパース"}, 
  {name: "その他"}
])

baby_kids_gbsmall = baby_kids.children.create(name: "ベビー服(男女兼用) ~95cm")
baby_kids_gbsmall.children.create([
  {name: "トップス"}, 
  {name: "アウター"}, 
  {name: "パンツ"}, 
  {name: "おくるみ"}, 
  {name: "下着/肌着"}, 
  {name: "パジャマ"}, 
  {name: "ロンパース"}, 
  {name: "その他"}
])

baby_kids_gbig = baby_kids.children.create(name: "ベビー服(女の子用) 100cm~")
baby_kids_gbig.children.create([
  {name: "コート"}, 
  {name: "ジャケット/上着"}, 
  {name: "トップス(Tシャツ/カットソー)"}, 
  {name: "トップス(トレーナー)"}, 
  {name: "トップス(チュニック)"}, 
  {name: "トップス(タンクトップ)"}, 
  {name: "トップス(その他)"}, 
  {name: "スカート"}, 
  {name: "パンツ"}, 
  {name: "ワンピース"}, 
  {name: "セットアップ"}, 
  {name: "パジャマ"}, 
  {name: "フォーマル/ドレス"}, 
  {name: "和服"}, 
  {name: "浴衣"}, 
  {name: "甚平"}, 
  {name: "水着"}, 
  {name: "その他"}
])


baby_kids_bbig = baby_kids.children.create(name: "ベビー服(男の子用) 100cm~")
baby_kids_bbig.children.create([
  {name: "コート"}, 
  {name: "ジャケット/上着"}, 
  {name: "トップス(Tシャツ/カットソー)"}, 
  {name: "トップス(トレーナー)"}, 
  {name: "トップス(その他)"}, 
  {name: "パンツ"}, 
  {name: "セットアップ"}, 
  {name: "パジャマ"}, 
  {name: "フォーマル/ドレス"}, 
  {name: "和服"}, 
  {name: "浴衣"}, 
  {name: "甚平"}, 
  {name: "水着"}, 
  {name: "その他"}
])


baby_kids_gbbig = baby_kids.children.create(name: "ベビー服(男女兼用) 100cm~")
baby_kids_gbbig.children.create([
  {name: "コート"}, 
  {name: "ジャケット/上着"}, 
  {name: "トップス(Tシャツ/カットソー)"}, 
  {name: "トップス(トレーナー)"}, 
  {name: "トップス(その他)"},  
  {name: "ボトムス"}, 
  {name: "パジャマ"}, 
  {name: "その他"}
])

baby_kids_shoes = baby_kids.children.create(name: "キッズ靴")
baby_kids_shoes.children.create([
  {name: "スニーカー"}, 
  {name: "サンダル"}, 
  {name: "ブーツ"}, 
  {name: "長靴"}, 
  {name: "その他"}
])

baby_kids_goods = baby_kids.children.create(name: "子ども用ファッション小物")
baby_kids_goods.children.create([
  {name: "靴下/スパッツ"},
  {name: "帽子"},
  {name: "エプロン"},
  {name: "サスペンダー"},
  {name: "タイツ"},
  {name: "ハンカチ"},
  {name: "バンダナ"},
  {name: "ベルト"},
  {name: "マフラー"},
  {name: "傘"},
  {name: "手袋"},
  {name: "スタイ"},
  {name: "バッグ"},
  {name: "その他"}
])

baby_kids_hygiene = baby_kids.children.create(name: "おむつ/トイレ/バス")
baby_kids_hygiene.children.create([
  {name: "おむつ用品"},
  {name: "おまる/補助便座"},
  {name: "トレーニングパンツ"},
  {name: "ベビーバス"},
  {name: "お風呂用品"},
  {name: "その他"}
])

baby_kids_outer = baby_kids.children.create(name: "外出/移動用品")
baby_kids_outer.children.create([
  {name: "ベビーカー"},
  {name: "抱っこひも/スリング"},
  {name: "チャイルドシート"},
  {name: "その他"}
])

baby_kids_food = baby_kids.children.create(name: "授乳/食事")
baby_kids_food.children.create([
  {name: "ミルク"},
  {name: "ベビーフード"},
  {name: "ベビー用食器"},
  {name: "その他"}
])

baby_kids_furniture = baby_kids.children.create(name: "授乳/食事")
baby_kids_furniture.children.create([
  {name: "ベッド"},
  {name: "布団/毛布"},
  {name: "椅子"},
  {name: "タンス"},
  {name: "その他"}
])

baby_kids_hobby = baby_kids.children.create(name: "おもちゃ")
baby_kids_hobby.children.create([
  {name: "おふろのおもちゃ"},
  {name: "ガラガラ"},
  {name: "オルゴール"},
  {name: "ベビージム"},
  {name: "手押し車/カタカタ"},
  {name: "知育玩具"},
  {name: "その他"}
])

baby_kids_souvenir = baby_kids.children.create(name: "行事/記念品")
baby_kids_souvenir.children.create([
  {name: "お宮参り用品"},
  {name: "お食い初め用品"},
  {name: "アルバム"},
  {name: "手形/足形"},
  {name: "その他"}
])

baby_kids_other = baby_kids.children.create(name: "その他")
baby_kids_other.children.create([
  {name: "母子手帳用品"},
  {name: "その他"}
])

