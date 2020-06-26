# 本・音楽・ゲーム
books = Category.create(name: "本・音楽・ゲーム")

books_book = books.children.create(name: "本")
books_book.children.create([
  {name: "文学/小説"}, 
  {name: "人文/社会"}, 
  {name: "ノンフィクション/教養"}, 
  {name: "地図/旅行ガイド"}, 
  {name: "ビジネス/経済"}, 
  {name: "健康/医学"}, 
  {name: "コンピュータ/IT"}, 
  {name: "趣味/スポーツ/実用"}, 
  {name: "住まい/暮らし/子育て"}, 
  {name: "アート/エンタメ"}, 
  {name: "洋書"}, 
  {name: "絵本"}, 
  {name: "参考書"}, 
  {name: "その他"}
])

books_manga = books.children.create(name: "漫画")
books_manga.children.create([
  {name: "全巻セット"}, 
  {name: "少年漫画"}, 
  {name: "少女漫画"}, 
  {name: "青年漫画"}, 
  {name: "女性漫画"}, 
  {name: "同人誌"}, 
  {name: "その他"}
])

books_mangazine = books.children.create(name: "雑誌")
books_mangazine.children.create([
  {name: "アート/エンタメ/ホビー"}, 
  {name: "ファッション"}, 
  {name: "ニュース/総合"}, 
  {name: "趣味/スポーツ"}, 
  {name: "その他"}
])

books_cd = books.children.create(name: "CD")
books_cd.children.create([
  {name: "邦楽"}, 
  {name: "洋楽"}, 
  {name: "アニメ"}, 
  {name: "クラシック"}, 
  {name: "K-POP/アジア"}, 
  {name: "キッズ/ファミリー"}, 
  {name: "その他"}  
])

books_dvd = books.children.create(name: "DVD/ブルーレイ")
books_dvd.children.create([
  {name: "外国映画"}, 
  {name: "日本映画"}, 
  {name: "アニメ"}, 
  {name: "TVドラマ"}, 
  {name: "ミュージック"}, 
  {name: "お笑い/バラエティ"}, 
  {name: "スポーツ/フィットネス"}, 
  {name: "キッズ/ファミリー"}, 
  {name: "その他"}
])

books_record = books.children.create(name: "レコード")
books_record.children.create([
  {name: "邦楽"}, 
  {name: "洋楽"}, 
  {name: "その他"}
])

books_tvgame = books.children.create(name: "テレビゲーム")
books_tvgame.children.create([
  {name: "家庭用ゲーム本体"}, 
  {name: "家庭用ゲームソフト"}, 
  {name: "携帯用ゲーム本体"}, 
  {name: "携帯用ゲームソフト"}, 
  {name: "PCゲーム"}, 
  {name: "その他"}
])
