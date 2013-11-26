class User < ActiveRecord::Base
    has_secure_password
    validates_presence_of :password, :on => :create, :message => "can't be blank!"
    #self.primary_key = "email"
end