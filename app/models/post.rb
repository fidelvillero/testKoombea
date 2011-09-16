class Post < ActiveRecord::Base
  validates_presence_of :title, :message => 'pleace is require'
  validates_presence_of :content, :message => 'pleace is required'
  has_many :links
  has_many :urls
  #accepts_nested_attributes_for :posts
  
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
end

