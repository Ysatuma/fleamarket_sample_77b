
# おもちゃ・ホビー・グッズ
hobby = Category.create(name: "おもちゃ・ホビー・グッズ")

hobby_toy = hobby.children.create(name: "おもちゃ")
hobby_toy.children.create([
  {name: "キャラクターグッズ"},
  {name: "ぬいぐるみ"},
  {name: "小物/アクセサリー"},
  {name: "模型/プラモデル"},
  {name: "ミニカー"},
  {name: "トイラジコン"},
  {name: "プラモデル"},
  {name: "ホビーラジコン"},
  {name: "鉄道模型"},
  {name: "その他"}
])  
  
hobby_talent = hobby.children.create(name: "タレントグッズ")
hobby_talent.children.create([
  {name: "アイドル"},
  {name: "ミュージシャン"},
  {name: "タレント/お笑い芸人"},
  {name: "スポーツ選手"},
  {name: "その他"}
])
  
hobby_comic = hobby.children.create(name: "コミック/アニメグッズ")
hobby_comic.children.create([
  {name: "ストラップ"},
  {name: "キーホルダー"},
  {name: "バッジ"},
  {name: "カード"},
  {name: "クリアファイル"},
  {name: "ポスター"},
  {name: "タオル"},
  {name: "その他"}
])

hobby_tcg = hobby.children.create(name: "トレーディングカード")
hobby_tcg.children.create([
  {name: "遊戯王"},
  {name: "マジック：ザ・ギャザリング"},
  {name: "ポケモンカードゲーム"},
  {name: "デュエルマスターズ"},
  {name: "バトルスピリッツ"},
  {name: "プリパラ"},
  {name: "アイカツ"},
  {name: "カードファイト!! ヴァンガード"},
  {name: "ヴァイスシュヴァルツ"},
  {name: "プロ野球オーナーズリーグ"},
  {name: "ベースボールヒーローズ"},
  {name: "ドラゴンボール"},
  {name: "スリーブ"},
  {name: "その他"}
])

hobby_figure = hobby.children.create(name: "フィギュア")
hobby_figure.children.create([
  {name: "コミック/アニメ"},
  {name: "特撮"},
  {name: "アニメキャラクター"},
  {name: "SF/ファンタジー/ホラー"},
  {name: "アメコミ"},
  {name: "スポーツ"},
  {name: "ミリタリー"},
  {name: "その他"}
])

hobby_musical_instrument = hobby.children.create(name: "楽器/器材")
hobby_musical_instrument.children.create([
  {name: "エレキギター"},
  {name: "アコースティックギター"},
  {name: "ベース"},
  {name: "エフェクター"},
  {name: "アンプ"},
  {name: "弦楽器"},
  {name: "管楽器"},
  {name: "鍵盤楽器"},
  {name: "打楽器"},
  {name: "和楽器"},
  {name: "楽譜/スコア"},
  {name: "レコーディング/PA機器"},
  {name: "DJ機器"},
  {name: "DTM/DAW"},
  {name: "その他"}
])

hobby_collection = hobby.children.create(name: "コレクション")
hobby_collection.children.create([
  {name: "武具"},
  {name: "使用済切手/官製はがき"},
  {name: "旧貨幣/金貨/銀貨/記念硬貨"},
  {name: "印刷物"},
  {name: "ノベルティグッズ"},
  {name: "その他"}
])

hobby_military = hobby.children.create(name: "ミリタリー")
hobby_military.children.create([
  {name: "個人装備"},
  {name: "トイガン"},
  {name: "その他"}
])

hobby_art = hobby.children.create(name: "美術品")
hobby_art.children.create([
  {name: "陶芸"},
  {name: "ガラス"},
  {name: "漆芸"},
  {name: "金属工芸"},
  {name: "絵画/タペストリ"},
  {name: "版画"},
  {name: "彫刻/オブジェクト"},
  {name: "書"},
  {name: "写真"},
  {name: "その他"}
])

hobby_art_goods = hobby.children.create(name: "アート用品")
hobby_art_goods.children.create([
  {name: "画材"},
  {name: "額縁"},
  {name: "その他"}
])

hobby_other = hobby.children.create(name: "その他")
hobby_other.children.create([
  {name: "トランプ/UNO"},
  {name: "カルタ/百人一首"},
  {name: "ダーツ"},
  {name: "ビリヤード"},
  {name: "麻雀"},
  {name: "パズル/ジグソーパズル"},
  {name: "囲碁/将棋"},
  {name: "オセロ/チェス"},
  {name: "人生ゲーム"},
  {name: "野球/サッカーゲーム"},
  {name: "スポーツ"},
  {name: "三輪車/乗り物"},
  {name: "ヨーヨー"},
  {name: "模型製作用品"},
  {name: "鉄道"},
  {name: "航空機"},
  {name: "アマチュア無線"},
  {name: "パチンコ/パチスロ"},
  {name: "その他"}
])
