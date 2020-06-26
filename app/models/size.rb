class Size < ActiveHash::Base
  self.data = [
    {id: 1, text: '選択してください'},
    {id: 2, text: 'Sサイズ'},
    {id: 3, text: 'Mサイズ'},
    {id: 4, text: 'Lサイズ'}
  ]
end
