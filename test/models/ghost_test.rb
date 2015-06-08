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
#  image_url  :string
#

require 'test_helper'

class GhostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
