class ShippingDate < ActiveHash::Base
  self.data = [
    {id: 1, text: '1~2日で発送'},
    {id: 2, text: '2~3日で発送'},
    {id: 3, text: '4~7日で発送'}
]
end
