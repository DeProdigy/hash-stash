class Comment < ActiveRecord::Base
  attr_accessible :content

  has_many :replies
end
