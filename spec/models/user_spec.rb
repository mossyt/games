require 'rails_helper'

RSpec.describe User, type: :model do

  before( :each ) do
    @valid_attributes = {
      email: 'user@example.com',
      password: '123456'
    }
  end

  it 'is valid with valid attributes' do
    expect( described_class.new( @valid_attributes ) ).to be_valid
  end


  it 'should be invalid with no email' do
    @valid_attributes[:email] = nil
    expect( described_class.new( @valid_attributes ) ).to_not be_valid
  end

    it 'should be valid with password_confirmation matching the password' do
      @valid_attributes[:password_confirmation] = @valid_attributes[:password]
      expect( described_class.new( @valid_attributes ) ).to be_valid
    end

end