class Question < ActiveRecord::Base
  belongs_to :user
  has_one :answer, dependent: :destroy

  validates :body, presence: true, length: { minimum: 5 }
end
