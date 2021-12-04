require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '::validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should belong_to(:author) }
  end
end
