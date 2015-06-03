# == Schema Information
#
# Table name: ghosts
#
#  id               :integer          not null, primary key
#  name             :string
#  location         :string
#  difficulty_level :string
#  features         :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class GhostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
