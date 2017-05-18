FactoryGirl.define do
  factory :user do
    username 'username'
    email 'user@user.com'
    password 'password'
  end

  factory :tzeet do
    text 'hello world!!'
  end
end