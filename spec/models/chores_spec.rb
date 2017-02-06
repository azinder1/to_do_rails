require 'rails_helper'

describe Chore do
  it { should validate_presence_of :name }
  it { should have_many :jobs }
end
