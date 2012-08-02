require 'net/ldap'

class User < ActiveRecord::Base

   has_many :meals

   attr_accessible :login, :first_name, :last_name, :nick_name, :role
   validates :first_name, 
            :last_name, 
            :login,
            :nick_name,
            :role, :presence => true

end
