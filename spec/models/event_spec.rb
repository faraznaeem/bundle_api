require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'should have valid Factory' do
    expect(create(:event)).to be_valid
  end

  describe 'Database table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title}
    it { is_expected.to validate_presence_of :description }
  end
end
