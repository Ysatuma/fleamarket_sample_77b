# その他
others = Category.create(name: "その他")

others_summary = others.children.create(name: "まとめ売り")

others_pets = others.children.create(name: "ペット用品")
others_pets.children.create([
  {name: "ペットフード"}, 
  {name: "犬用品"},
  {name: "猫用品"}, 
  {name: "魚用品/水草"},
  {name: "小動物用品"}, 
  {name: "爬虫類/両生類用品"},
  {name: "かご/おり"}, 
  {name: "鳥用品"},
  {name: "虫類用品"}, 
  {name: "その他"}
])

others_foods = others.children.create(name: "食品")
ohters_foods.children.create([
  {name: "菓子"},
  {name: "米"},
  {name: "野菜"},
  {name: "果物"},
  {name: "調味料"},
  {name: "魚介類(加工食品)"},
  {name: "肉類(加工食品)"},
  {name: "その他 加工食品"},
  {name: "その他"}
])

others_drinks = others.children.create(name: "飲料/酒")
ohters_drinks.children.create([
  {name: "コーヒー"},
  {name: "ソフトドリンク"},
  {name: "ミネラルウォーター"},
  {name: "茶"},
  {name: "ウイスキー"},
  {name: "ワイン"},
  {name: "ブランデー"},
  {name: "焼酎"},
  {name: "日本酒"},
  {name: "ビール、発泡酒"},
  {name: "その他"}
])

others_daily_necessities = others.children.create(name: "日用品/生活雑貨/旅行")
others_daily_necessities.children.create([
  {name: "タオル/バス用品"},
  {name: "日用品/生活雑貨"},
  {name: "洗剤/柔軟剤"},
  {name: "旅行用品"},
  {name: "防災関連グッズ"},
  {name: "その他"}
])

others_antiques = others.children.create(name: "アンティーク/コレクション")
ohters_antiques.children.create([
  {name: "雑貨"},
  {name: "工芸品"},
  {name: "家具"},
  {name: "印刷物"},
  {name: "その他"}
])

others_stationeries = others.children.create(name: "文房具/事務用品")
ohters_stationeries.children.create([
  {name: "筆記具"},
  {name: "ノート/メモ帳"},
  {name: "テープ/マスキングテープ"},
  {name: "カレンダー/スケジュール"},
  {name: "アルバム/スクラップ"},
  {name: "ファイル/バインダー"},
  {name: "はさみ/カッター"},
  {name: "カードホルダー/名刺管理"},
  {name: "のり/ホッチキス"},
  {name: "その他"}
])

others_office_works = others.children.create(name: "事務/店舗用品")
ohters_office_works.children.create([
  {name: "オフィス用品一般"},
  {name: "オフィス家具"},
  {name: "店舗用品"},
  {name: "OA機器"},
  {name: "ラッピング/包装"},
  {name: "その他"}
])

others_other = others.children.create(name: "その他")