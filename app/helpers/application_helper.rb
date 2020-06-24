module ApplicationHelper

  # 数字の桁を３桁ごと','で区切って表示させる
  def number_to_currency(price)
    "¥#{price.to_s(:delimited, delimiter: ',')}"
  end
  
end
