require 'rails_helper'

RSpec.describe Author, type: :model do
  describe '::validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should have_many(:tasks) }
  end
end
