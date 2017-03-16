require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should have_many :exercises }

  describe '#name' do
    it 'will return the user\'s full name' do
      user = User.create(first_name: 'Foo', last_name: 'Bar', email: 'foo@bar.com', password: 'password', password_confirmation: 'password')
      expect(user.name).to eq('Foo Bar')
    end
  end
end
