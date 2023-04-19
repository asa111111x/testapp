module Scoreable
    extend ActiveSupport::Concern
  
    included do
      scope :by_score, -> { order(score: :desc) }
    end
  
    def update_score
        points = self.votes.count *2
        age_in_hours = ((Time.now - self.created_at) / 3600).round
        score = (points - 1) / (age_in_hours + 2) ** 2.3
        update_column(:score, score)
    end
end