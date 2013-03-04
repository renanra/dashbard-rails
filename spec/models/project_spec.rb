require 'spec_helper'

describe Project do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:git_url) }
  it { should validate_presence_of(:path) }

  it { should have_and_belong_to_many(:metrics) }
end
