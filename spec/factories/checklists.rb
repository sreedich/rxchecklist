FactoryGirl.define do
  factory :checklist do
    sequence(:title) {|n| "title#{n}" }
    # title 'This is an awesome checklist title'
    user 
  end
end 
