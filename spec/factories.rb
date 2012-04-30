FactoryGirl.define do
  factory :user do
    name     "Rafe Hatfield"
    email    "rafe.hatfield@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end