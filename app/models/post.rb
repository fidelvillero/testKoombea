class Post < ActiveRecord::Base
  validates_presence_of :title, :message => 'pleace is require'
  validates_presence_of :content, :message => 'pleace is required'
  
  has_many :urls #, :inverse_of => :posts
  accepts_nested_attributes_for :urls
  
  extend FriendlyId
  friendly_id :title, :use => :slugged 
end