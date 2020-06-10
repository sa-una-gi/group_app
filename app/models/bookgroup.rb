class Bookgroup < ApplicationRecord
  has_many :choices,class_name: "Book",foreign_key: "choice_id",dependent: :detstroy
  has_many :prev,class_name: "Book",foreign_key: "prev_id",dependent: :detstroy
  has_many :next,class_name: "Book",foreign_key: "next_id",dependent: :detstroy
  belongs_to :group
end
