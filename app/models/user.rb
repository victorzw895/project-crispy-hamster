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
#

class User < ApplicationRecord

  has_secure_password

  # validations - see the rails guide for more
  # validates :email, :presence => true, :uniqueness => true

  has_and_belongs_to_many :industries
  has_many :posts
end
