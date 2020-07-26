class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments #связываем статью с комментариями
end
