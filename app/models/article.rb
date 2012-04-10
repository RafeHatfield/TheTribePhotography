class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true

  attr_accessible :active, :body, :excerpt, :published_at, :title
end
