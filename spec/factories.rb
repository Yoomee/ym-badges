FactoryGirl.define do
  
  factory :badge do
    sequence(:slug) {|n| "badge_#{n}"}
    sequence(:name) {|n| "Badge #{n}"}
    description "Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus"
  end
  
  factory :badge_awarding, :class => "YmBadges::BadgeAwarding" do
    badge
    user
  end
  
  factory :user do
    first_name "Charles"
    sequence(:last_name) {|n| "Barrett #{n}"}
    sequence(:email) {|n| "charles@barrett_#{n}.com"}
    password "password"
  end
  
end