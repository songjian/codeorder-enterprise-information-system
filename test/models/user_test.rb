# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login           :string
#  password_digest :string
#  remeber_digest  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  kind            :integer          default("headhunter")
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
