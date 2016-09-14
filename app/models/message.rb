class Message < ApplicationRecord
  attr_accessor :name, :email, :content, :subject

  validates_presence_of :name, :email, :content, :subject
end
