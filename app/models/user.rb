# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  username        :string
#

class User < ActiveRecord::Base
    has_many :ghosts
    has_secure_password
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {in: 5..50}, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password, presence: true, length: {in: 5..50}
end
