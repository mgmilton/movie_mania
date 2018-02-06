FactoryBot.define do
  factory :director do
    sequence(:name) {|n| "Name #{n}"}
  end

  factory :movie do
    sequence(:title) {|n| "Name #{n}"}
    sequence(:description) {|n| "Description #{n}"} 
    director
  end
end
