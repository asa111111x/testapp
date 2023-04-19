class Comment < ApplicationRecord
    include Scoreable
    belongs_to :article
    belongs_to :user
    has_many :votes, as: :voteable
    belongs_to :parent, class_name: "Comment", optional: true
    has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
    before_create :check_depth

    MAX_DEPTH = 7
  
    private
  
    def check_depth
      return true if parent.nil? 
  
      current_depth = parent.depth + 1
      return false if current_depth > MAX_DEPTH 
  
      self.depth = current_depth 
    end


end
