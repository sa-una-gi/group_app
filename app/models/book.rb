class Book < ApplicationRecord
	belongs_to :user
  belongs_to :choices,class_name: "Bookgroup"
  belongs_to :prev,class_name: "Bookgroup"
  belongs_to :next,class_name: "Bookgroup"
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
