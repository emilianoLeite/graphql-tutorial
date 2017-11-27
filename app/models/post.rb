class Post < ApplicationRecord
  belongs_to :author, class_name: 'Person'
  validates_presence_of :title, :rating
end
