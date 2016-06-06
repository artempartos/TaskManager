FactoryGirl.define do
  sequence :title do |n|
    "Very big title ten symbols#{n}"
  end

  sequence :description do |n|
    "loreum asprium alohamora harry potter #{n}"
  end
end
