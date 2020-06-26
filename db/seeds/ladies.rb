
# レディース
ladies = Category.create(name: "レディース")

ladies_tops = ladies.children.create(name: "トップス")
ladies_tops.children.create([
  {name: "Tシャツ/カットソー(半袖/袖なし)"}, 
  {name: "Tシャツ/カットソー(七分/長袖)"}, 
  {name: "シャツ/ブラウス(半袖/袖なし)"},
  {name: "シャツ/ブラウス(七分/長袖)"},
  {name: "シャツ/ブラウス(七分/長袖)"},  
  {name: "ポロシャツ"}, 
  {name: "キャミソール"}, 
  {name: "タンクトップ"}, 
  {name: "ホルスターネック"}, 
  {name: "ニット/セーター"}, 
  {name: "チュニック"}, 
  {name: "カーディガン/ボレロ"}, 
  {name: "アンサンブル"}, 
  {name: "ベスト/ジレ"}, 
  {name: "パーカー"}, 
  {name: "トレーナー/スウェット"}, 
  {name: "ベアトップ/チューブトップ"}, 
  {name: "ジャージ"}, 
  {name: "その他"}
])

ladies_jacket = ladies.children.create(name: "ジャケット/アウター")
ladies_jacket.children.create([
  {name: "テーラードジャケット"}, 
  {name: "ノーカラージャケット"}, 
  {name: "Gジャン/デニムジャケット"}, 
  {name: "レザージャケット"}, 
  {name: "ダウンジャケット"}, 
  {name: "ライダーズジャケット"}, 
  {name: "ミリタリージャケット"}, 
  {name: "ダウンベスト"}, 
  {name: "ジャンパー/ブルゾン"}, 
  {name: "ポンチョ"}, 
  {name: "ロングコート"}, 
  {name: "トレンチコート"}, 
  {name: "ダッフルコート"}, 
  {name: "ピーコート"}, 
  {name: "チェスターコート"}, 
  {name: "モッズコート"}, 
  {name: "スタジャン"}, 
  {name: "毛皮/ファーコート"}, 
  {name: "スプリングコート"}, 
  {name: "スカジャン"}, 
  {name: "その他"}
])

ladies_pants = ladies.children.create(name: "パンツ")
ladies_pants.children.create([
  {name: "デニム/ジーンズ"}, 
  {name: "ショートパンツ"}, 
  {name: "カジュアルパンツ"}, 
  {name: "ハーフパンツ"}, 
  {name: "チノパン"}, 
  {name: "ワークパンツ/カーゴパンツ"}, 
  {name: "クロップドパンツ"}, 
  {name: "サロペット/オーバーオール"}, 
  {name: "オールインワン"}, 
  {name: "サルエルパンツ"}, 
  {name: "ガウチョパンツ"}, 
  {name: "その他"}
])


ladies_skirt = ladies.children.create(name: "スカート")
ladies_skirt.children.create([
  {name: "ミニスカート"}, 
  {name: "ひざ丈スカート"}, 
  {name: "ロングスカート"}, 
  {name: "キュロット"}, 
  {name: "その他"}
])

ladies_onepiece = ladies.children.create(name: "ワンピース")
ladies_onepiece.children.create([
  {name: "ハイヒール/パンプス"}, 
  {name: "ブーツ"}, 
  {name: "サンダル"}, 
  {name: "スニーカー"}, 
  {name: "ミュール"}, 
  {name: "モカシン"}, 
  {name: "ローファー/革靴"}, 
  {name: "フラットシューズ/バレエシューズ"}, 
  {name: "長靴/レインシューズ"}, 
  {name: "その他"}
])

ladies_shoes = ladies.children.create(name: "靴")
ladies_shoes.children.create([
  {name: "ハイヒール/パンプス"}, 
  {name: "ブーツ"},
  {name: "サンダル"}, 
  {name: "スニーカー"},
  {name: "ミュール"}, 
  {name: "モカシン"},
  {name: "ローファー/革靴"},
  {name: "フラットシューズ/バレエシューズ"}, 
  {name: "長靴/レインシューズ"},
  {name: "その他"}
])

ladies_roomware = ladies.children.create(name: "ルームウェア/パジャマ")
ladies_roomware.children.create([
  {name: "パジャマ"}, 
  {name: "ルームウェア"}
])

ladies_regmware = ladies.children.create(name: "レッグウェア")
ladies_regmware.children.create([
  {name: "ソックス"}, 
  {name: "スパッツ/レギンス"}, 
  {name: "ストッキング/タイツ"}, 
  {name: "レッグウォーマー"}, 
  {name: "その他"} 
])

ladies_hat = ladies.children.create(name: "帽子")
ladies_hat.children.create([
  {name: "ニットキャップ/ピーニー"}, 
  {name: "ハット"}, 
  {name: "ハンチング/ベレー帽"}, 
  {name: "キャップ"}, 
  {name: "キャスケット"}, 
  {name: "麦わら帽子"}, 
  {name: "その他"} 
])

ladies_bag = ladies.children.create(name: "バッグ")
ladies_bag.children.create([
  {name: "ハンドバッグ"}, 
  {name: "トートバッグ"}, 
  {name: "エコバッグ"}, 
  {name: "リュック/バックパック"}, 
  {name: "ボストンバッグ"}, 
  {name: "スポーツバッグ"}, 
  {name: "ショルダーバッグ"}, 
  {name: "クラッチバッグ"}, 
  {name: "ポーチ/バニティ"}, 
  {name: "ボディバッグ/ウェストバッグ"}, 
  {name: "マザーズバッグ"}, 
  {name: "メッセンジャーバッグ"}, 
  {name: "ビジネスバッグ"}, 
  {name: "旅行用バッグ/キャリーバッグ"}, 
  {name: "ショップ袋"}, 
  {name: "和装用バッグ"}, 
  {name: "かごバッグ"}, 
  {name: "その他"}
])

ladies_accessory = ladies.children.create(name: "アクセサリー")
ladies_accessory.children.create([
  {name: "ネックレス"}, 
  {name: "ブレスレット"}, 
  {name: "リング"}, 
  {name: "ピアス(片耳用)"}, 
  {name: "ピアス(両耳用)"}, 
  {name: "イヤリング"}, 
  {name: "アンクレット"}, 
  {name: "ブローチ/コサージュ"}, 
  {name: "チャーム"}, 
  {name: "その他"} 

])

ladies_hairaccessory = ladies.children.create(name: "ヘアアクセサリー")
ladies_hairaccessory.children.create([
  {name: "ヘアゴム/シュシュ"}, 
  {name: "ヘアバンド/カチューシャ"}, 
  {name: "ヘアピン"}, 
  {name: "その他"} 
])

ladies_goods = ladies.children.create(name: "小物")
ladies_goods.children.create([
  {name: "長財布"}, 
  {name: "折り財布"}, 
  {name: "コインケース/小銭入れ"}, 
  {name: "名刺入れ/定期入れ"}, 
  {name: "キーケース"}, 
  {name: "キーホルダー"}, 
  {name: "手袋/アームカバー"}, 
  {name: "ハンカチ"}, 
  {name: "ベルト"}, 
  {name: "マフラー/ショール"}, 
  {name: "ストール/スヌード"}, 
  {name: "バンダナ/スカーフ"}, 
  {name: "ネックウォーマー"}, 
  {name: "サスペンダー"}, 
  {name: "サングラス/メガネ"}, 
  {name: "モバイルケース/カバー"}, 
  {name: "手帳"}, 
  {name: "イヤマフラー"}, 
  {name: "傘"}, 
  {name: "レインコート/ポンチョ"}, 
  {name: "ミラー"}, 
  {name: "タバコグッズ"}, 
  {name: "その他"}
])

ladies_watch = ladies.children.create(name: "時計")
ladies_watch.children.create([
  {name: "腕時計(デジタル)"}, 
  {name: "腕時計(アナログ)"}, 
  {name: "ラバーベルト"}, 
  {name: "レザーベルト"}, 
  {name: "金属ベルト"}, 
  {name: "その他"}
])

ladies_wig = ladies.children.create(name: "ウィッグ/エクステ")
ladies_wig.children.create([
  {name: "前髪ウィッグ"}, 
  {name: "ロングスカート"}, 
  {name: "ロングカール"}, 
  {name: "ショートストレート"}, 
  {name: "ショートカール"}, 
  {name: "その他"}
])

ladies_yukata = ladies.children.create(name: "浴衣/水着")
ladies_yukata.children.create([
  {name: "浴衣"}, 
  {name: "着物"}, 
  {name: "振袖"}, 
  {name: "長襦袢/半襦袢"}, 
  {name: "水着セパレート"}, 
  {name: "水着ワンピース"}, 
  {name: "水着スポーツ用"}, 
  {name: "その他"} 
])

ladies_suits = ladies.children.create(name: "スーツ/フォーマル/ドレス")
ladies_suits.children.create([
  {name: "スカートスーツ上下"}, 
  {name: "パンツスーツ上下"}, 
  {name: "ドレス"}, 
  {name: "パーティーバッグ"}, 
  {name: "シューズ"}, 
  {name: "ウェディング"}, 
  {name: "その他"}
])

ladies_maternity = ladies.children.create(name: "スーツ/フォーマル/ドレス")
ladies_maternity.children.create([
  {name: "トップス"}, 
  {name: "アウター"}, 
  {name: "インナー"}, 
  {name: "ワンピース"}, 
  {name: "パンツ/スパッツ"}, 
  {name: "スカート"}, 
  {name: "パジャマ"}, 
  {name: "授乳服"}, 
  {name: "その他"}
])

ladies_other = ladies.children.create(name: "その他")
ladies_other.children.create([
  {name: "コスプレ"}, 
  {name: "下着"}, 
  {name: "その他"}
])
