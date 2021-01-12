require 'rails_helper'

describe Doctor do
  subject do
    described_class.new(
      name: 'John Weak',
      email: 'john.week@example.com',
      phone: '1234567897894156',
      password: '123456789',
      password_confirmation: '123456789',
      document: '23123456789789',
      medical_specializations_id: '2'
    )
  end

  describe 'Validations' do
    it 'is valid all attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid without name' do
      subject.name = nil
      subject.valid?
      expect(subject.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without email' do
      subject.email = nil
      subject.valid?
      expect(subject.errors[:email]).to include("can't be blank")
    end

    it 'is invalid without phone' do
      subject.phone = nil
      subject.valid?
      expect(subject.errors[:phone]).to include("can't be blank")
    end

    it 'is invalid without password' do
      subject.password = nil
      subject.valid?
      expect(subject.errors[:password]).to include("can't be blank")
    end

    it 'is invalid without document' do
      subject.document = nil
      subject.valid?
      expect(subject.errors[:document]).to include("can't be blank")
    end

    it 'is invalid without medical_specializations_id' do
      subject.medical_specializations_id = nil
      subject.valid?
      expect(subject.errors[:medical_specializations_id]).to include("can't be blank")
    end

    it 'is invalid if password is different from password_confirmation' do
      subject.password = '1234567890'
      subject.valid?.inspect
      #expect(subject.errors[:password]).to include("can't be blank")
    end
  end
end
