# == Schema Information
#
# Table name: viewers
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  person_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Viewer do
  before(:each) do
    @valid_attributes = {
      :topic_id => 1,
      :person_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Viewer.create!(@valid_attributes)
  end
end
