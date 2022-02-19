class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :body, presence: true
  validates :body, length: { minimum: 1, maximum: 250 }
  validates :image, attached: true,
                    content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                    size: { less_than: 3.megabytes, message: 'size should less than 3 megabytes' }
end
