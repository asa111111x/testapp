require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.create(email: 'test@example.com', password: 'password') }
  let(:article) { Article.create(title: 'Test Article', content: 'Lorem ipsum dolor sit amet', user: user) }
  let(:comment) { Comment.create(content: 'Great article!', user: user, article: article) }

  describe '#update_score' do
    it 'updates the score based on the number of votes and age of the comment' do
      expect(comment.score).to eq(0)

      # Create 5 votes for the comment
      5.times { comment.votes.create }

      # Freeze the time to 10 hours after the comment was created
      travel_to(comment.created_at + 10.hours) do
        comment.update_score
      end

      expect(comment.score).to be < 0
    end
  end
end