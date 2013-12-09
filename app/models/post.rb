class Post < ActiveRecord::Base
    #has_one :category, :primary_key => 'name'
    belongs_to :cateogry,:foreign_key => 'name'
    has_many :revision, dependent: :destroy
    validates :title, presence: true, length: {minimum: 1}
end
