class Profile < ApplicationRecord
  belongs_to :user
  enum user_type: %i[recruiter freelancer]
end
