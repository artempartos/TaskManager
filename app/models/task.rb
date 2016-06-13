class Task < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 10 }
  validates :description, presence: true

  state_machine :initial => :inactive do
    event :active do
      transition :inactive => :active
    end

    event :inactive do
      transition :active => :inactive
    end
  end
end
