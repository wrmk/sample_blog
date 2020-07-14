class Article < ApplicationRecord
  has_many :comments #связываем статью с комментариями
end
