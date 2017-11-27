class Comment < ApplicationRecord
  belongs_to :author, class_name: 'Person'
  belongs_to :post
end
