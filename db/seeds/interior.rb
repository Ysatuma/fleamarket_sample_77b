
# インテリア・住まい・小物
interior = Category.create(name: "インテリア・住まい・小物")

interior_kitchen = interior.children.create(name: "キッチン/食器")
interior_kitchen.children.create([
  {name: "食器"}, 
  {name: "調理器具"}, 
  {name: "収納/キッチン雑貨"}, 
  {name: "弁当用品"}, 
  {name: "カトラリー(スプーン等)"}, 
  {name: "テーブル用品"}, 
  {name: "容器"}, 
  {name: "エプロン"}, 
  {name: "アルコールグッズ"}, 
  {name: "浄水機"}, 
  {name: "その他"}
])

interior_bed = interior.children.create(name: "ベッド/マットレス")
interior_bed.children.create([
  {name: "セミシングルベッド"}, 
  {name: "シングルベッド"}, 
  {name: "セミダブルベッド"}, 
  {name: "ダブルベッド"}, 
  {name: "ワイドダブルベッド"}, 
  {name: "クイーンベッド"}, 
  {name: "キングベッド"}, 
  {name: "脚付きマットレスベッド"}, 
  {name: "マットレス"}, 
  {name: "すのこベッド"}, 
  {name: "ロフトベッド/システムベッド"}, 
  {name: "簡易ベッド/折りたたみベッド"}, 
  {name: "収納付き"}, 
  {name: "その他"}
])

interior_sofa = interior.children.create(name: "ソファ/ソファベッド")
interior_sofa.children.create([
  {name: "ソファセット"}, 
  {name: "シングルソファ"}, 
  {name: "ラブソファ"}, 
  {name: "トリプルソファ"}, 
  {name: "オットマン"}, 
  {name: "コーナーソファ"}, 
  {name: "ビーズソファ/クッションソファ"}, 
  {name: "ローソファ/フロアソファ"}, 
  {name: "ソファベッド"}, 
  {name: "応接セット"}, 
  {name: "ソファカバー"}, 
  {name: "リクライニングソファ"}, 
  {name: "その他"}
])

interior_chair = interior.children.create(name: "椅子/チェア")
interior_chair.children.create([
  {name: "一般"},
  {name: "スツール"},
  {name: "ダイニングチェア"},
  {name: "ハイバックチェア"},
  {name: "ロッキングチェア"},
  {name: "座椅子"},
  {name: "折り畳み椅子"},
  {name: "デスクチェア"},
  {name: "その他"}
])

interior_desk = interior.children.create(name: "机/テーブル")
interior_desk.children.create([
  {name: "こたつ"},
  {name: "カウンターテーブル"},
  {name: "サイドテーブル"},
  {name: "センターテーブル"},
  {name: "ダイニングテーブル"},
  {name: "座卓/ちゃぶ台"},
  {name: "アウトドア用"},
  {name: "パソコン用"},
  {name: "事務机/学習机"},
  {name: "その他"}
])

interior_storage = interior.children.create(name: "収納家具")
interior_storage.children.create([
  {name: "リビング収納"},
  {name: "キッチン収納"},
  {name: "玄関/屋外収納"},
  {name: "バス/トイレ収納"},
  {name: "本収納"},
  {name: "本/CD/DVD収納"},
  {name: "洋服タンス/押入れ収納"},
  {name: "電話台/ファックス台"},
  {name: "ドレッサー/鏡台"},
  {name: "棚/ラック"},
  {name: "ケース/ボックス"},
  {name: "その他"}
])

interior_floor = interior.children.create(name: "ラグ/カーペット/マット")
interior_floor.children.create([
  {name: "ラグ"},
  {name: "カーペット"},
  {name: "ホットカーペット"},
  {name: "玄関/キッチンマット"},
  {name: "トイレ/バスマット"},
  {name: "その他"}
])

interior_curtain = interior.children.create(name: "カーテン/ブラインド")
interior_curtain.children.create([
  {name: "カーテン"},
  {name: "ブラインド"},
  {name: "ロールスクリーン"},
  {name: "のれん"},
  {name: "その他"}
])

interior_light = interior.children.create(name: "ライト/照明")
interior_light.children.create([
  {name: "蛍光灯/電球"},
  {name: "天井照明"},
  {name: "フロアスタンド"},
  {name: "その他"}
])

interior_bedding = interior.children.create(name: "寝具")
interior_bedding.children.create([
  {name: "布団/毛布"},
  {name: "枕"},
  {name: "シーツ/カバー"},
  {name: "その他"}
])

interior_goods = interior.children.create(name: "インテリア小物")
interior_goods.children.create([
  {name: "ゴミ箱"},
  {name: "ウェルカムボード"},
  {name: "オルゴール"},
  {name: "クッション"},
  {name: "クッションカバー"},
  {name: "スリッパラック"},
  {name: "ティッシュボックス"},
  {name: "バスケット/かご"},
  {name: "フォトフレーム"},
  {name: "マガジンラック"},
  {name: "モビール"},
  {name: "花瓶"},
  {name: "灰皿"},
  {name: "傘立て"},
  {name: "小物入れ"},
  {name: "置時計"},
  {name: "掛時計/柱時計"},
  {name: "鏡(立て掛け式)"},
  {name: "鏡(壁掛け式)"},
  {name: "置物"},
  {name: "風鈴"},
  {name: "植物/観葉植物"},
  {name: "その他"}
])

interior_season = interior.children.create(name: "インテリア小物")
interior_season.children.create([
  {name: "正月"},
  {name: "成人式"},
  {name: "バレンタインデー"},
  {name: "ひな祭り"},
  {name: "子どもの日"},
  {name: "母の日"},
  {name: "父の日"},
  {name: "サマーギフト/お中元"},
  {name: "夏/夏休み"},
  {name: "ハロウィン"},
  {name: "敬老の日"},
  {name: "七五三"},
  {name: "お歳暮"},
  {name: "クリスマス"},
  {name: "冬一般"},
  {name: "その他"}
])

interior_other = interior.children.create(name: "その他")


