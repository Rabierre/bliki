class Post < ActiveRecord::Base
    belongs_to :category
    has_many :revision, dependent: :destroy
    validates :title, presence: true, length: {minimum: 1}
end
