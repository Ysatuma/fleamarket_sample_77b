# 使い方
# 1.db/seedsフォルダにrbファイルを作成
# 2.rbファイル内にレコード生成用のコードを記述
#  *書き方は命名規則含めすでに入っているladies.rbを参考に
# 3.本ファイルに作成したファイルをrequireする
# 4.bundle exec rake db:seed コマンドで、3でrequire指定したファイル内のコードが実行される。
# 5.rbファイル単体で実行したい場合はbundle exec rake db:seed:ladiesなどとする

# ここに生成したrbを記述
require './db/seeds/ladies.rb'
require './db/seeds/mens.rb'
require './db/seeds/baby-kids.rb'
require './db/seeds/interior.rb'
require './db/seeds/books.rb'
require './db/seeds/hobby.rb'
require './db/seeds/appliances.rb'
require './db/seeds/cars.rb'
require './db/seeds/cosmetics.rb'
require './db/seeds/handmades.rb'
require './db/seeds/others.rb'
require './db/seeds/sports.rb'
require './db/seeds/tikets.rb'

