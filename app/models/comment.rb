class Comment < ActiveRecord::Base
#넌 게시글 하나에 속해있어  반드시 단수형으로 
  belongs_to :post

end
