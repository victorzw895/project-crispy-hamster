# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  user_id      :bigint
#  title        :text
#  content      :text
#  media        :text
#  content_type :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user, :optional => true
end
