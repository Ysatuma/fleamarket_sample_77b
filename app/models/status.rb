class Status < ActiveHash::Base
  self.data = [
    {id: 1, text: '新品、未使用'},
    {id: 2, text: '未使用に近い'},
    {id: 3, text: '目立った傷や汚れなし'},
    {id: 4, text: 'やや傷や汚れあり'},
    {id: 5, text: '傷や汚れあり'},
    {id: 6, text: '全体的に状態が悪い'}
]
end
