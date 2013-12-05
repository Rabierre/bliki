class Post < ActiveRecord::Base
    has_one :category
    has_many :revision, dependent: :destroy
    validates :title, presence: true, length: {minimum: 1}
end
