# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  photo_date :date
#  file_no    :string(255)
#  album_no   :string(255)
#  title      :string(255)
#  comment    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PhotosTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
