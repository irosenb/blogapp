class Post < ApplicationRecord
  has_one :author
  has_many :comments
end
