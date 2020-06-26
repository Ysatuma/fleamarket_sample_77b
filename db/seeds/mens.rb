
# メンズ
mens = Category.create(name: "メンズ")

mens_tops = mens.children.create(name: "トップス")
mens_tops.children.create([
  {name: "Tシャツ/カットソー(半袖/袖なし)"}, 
  {name: "Tシャツ/カットソー(七分/長袖)"}, 
  {name: "シャツ"},
  {name: "ポロシャツ"}, 
  {name: "ニット/セーター"}, 
  {name: "パーカー"}, 
  {name: "スウェット"}, 
  {name: "ジャージ"}, 
  {name: "ベスト"}, 
  {name: "その他"}
])

mens_jacket = mens.children.create(name: "ジャケット/アウター")
mens_jacket.children.create([
  {name: "テーラードジャケット"}, 
  {name: "ノーカラージャケット"}, 
  {name: "Gジャン/デニムジャケット"}, 
  {name: "レザージャケット"}, 
  {name: "ダウンジャケット"}, 
  {name: "ライダーズジャケット"}, 
  {name: "ミリタリージャケット"}, 
  {name: "ナイロンジャケット"}, 
  {name: "フライトジャケット"}, 
  {name: "ダッフルコート"}, 
  {name: "ピーコート"}, 
  {name: "ステンカラーコート"}, 
  {name: "トレンチコート"}, 
  {name: "チェスターコート"}, 
  {name: "モッズコート"}, 
  {name: "スタジャン"}, 
  {name: "スカジャン"}, 
  {name: "ブルゾン"}, 
  {name: "マウンテンパーカー"},   
  {name: "ダウンベスト"}, 
  {name: "ポンチョ"}, 
  {name: "オーバーオール"}, 
  {name: "その他"}
])

mens_pants = mens.children.create(name: "パンツ")
mens_pants.children.create([
  {name: "デニム/ジーンズ"}, 
  {name: "ワークパンツ/カーゴパンツ"}, 
  {name: "スラックス"}, 
  {name: "チノパン"}, 
  {name: "ショートパンツ"}, 
  {name: "ペインターパンツ"}, 
  {name: "サルエルパンツ"}, 
  {name: "オーバーオール"}, 
  {name: "その他"}
])

mens_shoes = mens.children.create(name: "靴")
mens_shoes.children.create([
  {name: "サンダル"}, 
  {name: "スニーカー"},
  {name: "ブーツ"},
  {name: "モカシン"},
  {name: "ビジネス"},
  {name: "長靴/レインシューズ"},
  {name: "デッキシューズ"}, 
  {name: "その他"}
])

mens_bag = mens.children.create(name: "バッグ")
mens_bag.children.create([
  {name: "ショルダーバッグ"}, 
  {name: "トートバッグ"}, 
  {name: "ボストンバッグ"}, 
  {name: "リュック/バックパック"}, 
  {name: "ウェストポーチ"}, 
  {name: "ボディバッグ"}, 
  {name: "ドラムバッグ"},
  {name: "ビジネスバッグ"}, 
  {name: "トラベルバッグ"}, 
  {name: "メッセンジャーバッグ"}, 
  {name: "エコバッグ"}, 
  {name: "その他"}
])

mens_suits = mens.children.create(name: "スーツ")
mens_suits.children.create([
  {name: "スーツジャケット"}, 
  {name: "スーツベスト"}, 
  {name: "スラックス"}, 
  {name: "セットアップ"}, 
  {name: "その他"}
])

mens_hat = mens.children.create(name: "帽子")
mens_hat.children.create([
  {name: "キャップ"}, 
  {name: "ハット"}, 
  {name: "ニットキャップ/ピーニー"}, 
  {name: "ハンチング/ベレー帽"}, 
  {name: "キャスケット"}, 
  {name: "サンバイザー"}, 
  {name: "その他"} 
])

mens_accessory = mens.children.create(name: "アクセサリー")
mens_accessory.children.create([
  {name: "ネックレス"}, 
  {name: "ブレスレット"}, 
  {name: "バングル/リストバンド"},   
  {name: "リング"}, 
  {name: "ピアス(片耳用)"}, 
  {name: "ピアス(両耳用)"}, 
  {name: "アンクレット"}, 
  {name: "その他"} 
])

mens_goods = mens.children.create(name: "小物")
mens_goods.children.create([
  {name: "長財布"}, 
  {name: "折り財布"}, 
  {name: "マネークリップ"}, 
  {name: "コインケース/小銭入れ"}, 
  {name: "名刺入れ/定期入れ"}, 
  {name: "キーケース"}, 
  {name: "キーホルダー"}, 
  {name: "ネクタイ"}, 
  {name: "手袋"}, 
  {name: "ハンカチ"}, 
  {name: "ベルト"}, 
  {name: "マフラー"}, 
  {name: "ストール"}, 
  {name: "バンダナ"}, 
  {name: "ネックウォーマー"}, 
  {name: "サスペンダー"}, 
  {name: "ウォレットチェーン"}, 
  {name: "サングラス/メガネ"}, 
  {name: "モバイルケース/カバー"}, 
  {name: "手帳"}, 
  {name: "ストラップ"},
  {name: "ネクタイピン"},
  {name: "カフリンクス"},
  {name: "イヤマフラー"}, 
  {name: "傘"}, 
  {name: "レインコート"}, 
  {name: "ミラー"}, 
  {name: "タバコグッズ"}, 
  {name: "その他"}
])

mens_watch = mens.children.create(name: "時計")
mens_watch.children.create([
  {name: "腕時計(デジタル)"}, 
  {name: "腕時計(アナログ)"}, 
  {name: "ラバーベルト"}, 
  {name: "レザーベルト"}, 
  {name: "金属ベルト"}, 
  {name: "その他"}
])

mens_swimwear = mens.children.create(name: "水着")
mens_swimwear.children.create([
  {name: "一般水着"}, 
  {name: "スポーツ用"},
  {name: "アクセサリー"},  
  {name: "その他"} 
])

mens_regwear = mens.children.create(name: "レッグウェア")
mens_regwear.children.create([
  {name: "ソックス"},
  {name: "レギンス/スパッツ"},
  {name: "レッグウォーマー"},
  {name: "その他"}
])

mens_underwear = mens.children.create(name: "アンダーウェア")
mens_underwear.children.create([
  {name: "トランクス"},
  {name: "ボクサーパンツ"},
  {name: "その他"}
])

mens_other = mens.children.create(name: "その他")
