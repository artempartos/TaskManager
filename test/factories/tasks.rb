# encoding: utf-8
FactoryGirl.define do
  sequence :task do |n|
    {
      "title" => "Title very long title #{n}",
      "description" => "description #{n}"
    }
  end
  sequence :task_for_update do |n|
    {
        "title" => "Title very long title updated#{n}",
        "description" => "description updated#{n}"
    }
  end
end
