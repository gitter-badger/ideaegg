# == Schema Information
#
# Table name: follows
#
#  id              :integer          not null, primary key
#  followable_id   :integer          not null
#  followable_type :string(255)      not null
#  follower_id     :integer          not null
#  follower_type   :string(255)      not null
#  blocked         :boolean          default(FALSE), not null
#  created_at      :datetime
#  updated_at      :datetime
#

class Follow < ActiveRecord::Base

  extend ActsAsFollower::FollowerLib
  extend ActsAsFollower::FollowScopes

  # NOTE: Follows belong to the "followable" interface, and also to followers
  belongs_to :followable, :polymorphic => true, :counter_cache => "followers_count"
  belongs_to :follower,   :polymorphic => true, :counter_cache => "followees_count"

  def block!
    self.update_attribute(:blocked, true)
  end

end
