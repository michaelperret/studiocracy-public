class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comment_votes
  delegate :fullname, :to => :user
  delegate :image, :to => :user

  acts_as_tree order: 'created_at DESC'

  attr_reader :votecount

  def votecount
    #Ranking algorithm:
    #Implementation of reddit comment ranking algorithm:

    upvotes = comment_votes.where(:state => 1).count
    downvotes = comment_votes.where(:state => -1).count
    n = upvotes + downvotes
    if upvotes == 0;
      return -downvotes;
    end
    z = 1.64485 #1.0 = 85%, 1.6 = 95%
    phat = Float(upvotes / n)
    return (phat+z*z/(2*n)-z*Math.sqrt((phat*(1-phat)+z*z/(4*n))/n))/(1+z*z/n)
  end

  def up_minus_down
    upvotes = comment_votes.where(:state => 1).count
    downvotes = comment_votes.where(:state => -1).count
    return upvotes - downvotes
  end
end
