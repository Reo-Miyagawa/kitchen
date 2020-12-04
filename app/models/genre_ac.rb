class GenreAc < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '野菜のおかず' }, { id: 2, name: 'お肉のおかず' }, { id: 3, name: '魚介のおかず' },
    { id: 4, name: 'ごはんもの' }, { id: 5, name: 'パスタ・グラタン' }, { id: 6, name: '麺' },
    { id: 7, name: 'サラダ' }, { id: 8, name: 'スープ・汁物' }, { id: 9, name: 'パン' }
  ]
end
