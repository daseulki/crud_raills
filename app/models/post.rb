class Post < ActiveRecord::Base
  #넌 댓글을 갖고 있어.. 꼭 복수형으로 
  has_many :comments

end
