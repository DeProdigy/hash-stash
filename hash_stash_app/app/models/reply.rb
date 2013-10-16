class Reply < ActiveRecord::Base
  attr_accessible :content, :comment_id

  belongs_to :comment
end