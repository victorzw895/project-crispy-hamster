# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :text
#  name            :text
#  tag_line        :text
#  about           :text
#  logo_image      :text
#  banner_image    :text
#  more            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean          default(FALSE)
#  company         :boolean          default(FALSE)
#

class User < ApplicationRecord
  include PgSearch::Model

  has_secure_password

  # validations - see the rails guide for more
  # validates :email, :presence => true, :uniqueness => true

  has_and_belongs_to_many :industries, :optional => true
  has_many :posts

  # pg_search_scope :search_by_name, against: :name
  # , using: [:tsearch, :trigram, :dmetaphone]
  # pg_search_scope :search_industry, associated_against: {
  # industries_users: [:industry_id, :users_id],
  # industries: [:industry_id, :name]
  # }
  pg_search_scope :search_industry, associated_against: {
  industries: :name
  }
# ### Trial
  # pg_search_scope :search_industry, associated_against: {
  # industries_users: :industry_id, :user_id
  # industries: :id
  # }

end
