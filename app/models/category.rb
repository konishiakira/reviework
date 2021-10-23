class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },   # ←こちらに注目しましょう
    { id: 2, name: 'アニメ' },
    { id: 3, name: 'マンガ' },
    { id: 4, name: 'ゲーム' },
    { id: 5, name: '映画' },
  ]


   include ActiveHash::Associations
   has_many :pages
  # belongs_to :item


  # #空の投稿を保存できないようにする
  # validates :title, :text, presence: true

  # #ジャンルの選択が「--」の時は保存できないようにする
  # validates :genre_id, numericality: { other_than: 1 } 

  # #ジャンルの選択が「--」の時は保存できないようにする
  # validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}

  # #空の投稿を保存できないようにする
  # validates :title, :text, presence: true

  # #ジャンルの選択が「--」の時は保存できないようにする
  # validates :item_id, numericality: { other_than: 1 } 

  # #ジャンルの選択が「--」の時は保存できないようにする
  # validates :item_id, numericality: { other_than: 1 , message: "can't be blank"}

end
