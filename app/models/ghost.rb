# == Schema Information
#
# Table name: ghosts
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  difficulty :string
#  features   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Ghost < ActiveRecord::Base

  # validations

  serialize :features, Array

  belongs_to :user


end
