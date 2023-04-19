namespace :update do
    desc "Update scores for all articles"
    task :scores => :environment do
      Article.all.each do |article|
        article.update_score
      end

      Comment.all.each do |comment|
        comment.update_score
      end

    end
  end