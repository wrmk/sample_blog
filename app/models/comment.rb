class Comment < ApplicationRecord
  belongs_to :article # связываем комментарии со статьёй
end
