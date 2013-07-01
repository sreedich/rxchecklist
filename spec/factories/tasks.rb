FactoryGirl.define do
  factory :task do
    sequence(:name) {|n| "task#{n}" }
    sequence(:position) {|n| "position#{n}" }
    checklist  
  end
end 
