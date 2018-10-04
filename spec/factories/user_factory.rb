FactoryBot.define do
    sequence(:email) {|n| "test#{n}@example.com"}
  
    factory :user do
      email    
      password "password"
      first_name "Joseph"
      last_name "Kerr"
      admin false
    end
  
    factory :admin, class: User do
      email
      password "password"
      admin true
      first_name "Edward"
      last_name "Nigma"
    end
  
  end