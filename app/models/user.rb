class User < ApplicationRecord

  validates_presence_of :name, message: "Name can not be empty. Please enter your name"
  validates_presence_of :email
end
