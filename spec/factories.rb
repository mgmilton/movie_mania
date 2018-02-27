FactoryBot.define do
  factory :director do
    sequence(:name) {|n| "Name #{n}"}
  end

  factory :movie do
    sequence(:title) {|n| "Title #{n}"}
    sequence(:description) {|n| "Description #{n}"}
    director
  end

  factory :admin, class: Director do
    name "Ilana"
  end

  factory :awards do
   sequence(:title) {|n| "Title #{n}" }
   sequence(:year) {|n| "Year #{n}"}
   movie
  end
end
