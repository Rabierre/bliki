class Category < ActiveRecord::Base
    self.primary_key = :name
    validates :name, :uniqueness => true
    belongs_to :post
end