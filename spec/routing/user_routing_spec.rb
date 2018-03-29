require 'rails_helper'

RSpec.describe 'routing to users', type: :routing do
  


  it 'should route /users/sign_in to devise/sessions#new for user authentication' do
    expect(
      get: '/users/sign_in'
    ).to route_to( controller: "devise/sessions", action: "create")
    expect(
      post: '/users/sign_in'
    ).to route_to( controller: "devise/sessions", action: "create" )
  end

  it 'should route /users/sign_up to users#sign_up for user registration' do
    expect(
      get: '/users/sign_up'
    ).to route_to( controller:"devise/registrations", action: 'new' )
    expect(
      post: '/users/sign_up'
    ).to route_to( controller: "devise/registrations", action: 'new' )
  end

  it 'should route /users/sign_out to users#sign_out to end user session' do
    expect(
      get: "/users/sign_out"
    ).to route_to( controller: "devise/sessions", action: 'sign_out' )
    expect(
      delete: "/users/sign_out"
    ).to route_to( controller: "devise/sessions", action: 'sign_out' )
  end

  it 'should route /users/password/new to users#password_new to reset user password' do
    user = Factory(:user)
    visit user_sign_in_path
    click_link "Forgotten_password"
    expect(
      get: '/users/password/new'
    ).to route_to( controller: "devise/passwords", action: "new" )
    expect(
      post: '/users/password/new'
    ).to route_to( controller: "devise/passwords", action: "new" )
  end


  it 'should route /users/unlock to users#unlock for user activation' do
    expect(
      get: '/users/unlock'
    ).to route_to( controller: "devise/unlocks", action: "show" )
  end

end
