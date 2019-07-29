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
  include PgSearch::Model

  belongs_to :user, :optional => true
  has_many :industries, through: :user

  pg_search_scope :search_by_title, against: :title
  pg_search_scope :industry_search, associated_against: {
  industries: :name,
  user: :name
}

end
