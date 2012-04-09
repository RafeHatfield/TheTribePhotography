class Article < ActiveRecord::Base
  attr_accessible :active, :body, :excerpt, :published_at, :title
end
