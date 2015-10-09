require 'rails_helper'

describe User do
  describe '#generate_uid' do
    it 'gets uid assigned' do
      user = create(:user)
      expect(user.uid).not_to be_blank
    end
  end

  describe 'Validation' do
    context 'when valid' do
      it 'creates a new user' do
        expect{create(:user)}.to change(User, :count).by(+1)
      end
    end
    context 'when invalid' do
      it 'has no name' do
        expect(build(:user, name: nil)).to be_invalid
      end
      it 'has no last name' do
        expect(build(:user, last_name: nil)).to be_invalid
      end
      it 'has no email' do
        expect(build(:user, email: nil)).to be_invalid
      end
      it 'has no password' do
        expect(build(:user, password: nil)).to be_invalid
      end
      it 'has name with more than 100 symbols' do
        expect(build(:user, name: FFaker::Lorem.characters(110))).to be_invalid
      end
      it 'has last name with more than 100 symbols' do
        expect(build(:user, last_name: FFaker::Lorem.characters(110))).to be_invalid
      end
    end
  end
end
