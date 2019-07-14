class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, presence: true, length: { maximum: 50 }
  validates :body,  presence: true, length: { maximum: 2000 }
  scope :find_newest_article, -> { order(created_at: :desc).limit(5) }

end
