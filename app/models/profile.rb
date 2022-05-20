# frozen_string_literal: true
# app/models/profile.rb
class Profile < ApplicationRecord
  belongs_to :user

  enum user_type: %i[recruiter freelancer]

  scope :freelancer_user, -> { where(user_type: 'freelancer') }

  scope :filter_rate, ->(min_value, max_value) {
    where('hourly_rate BETWEEN ? AND ?', min_value, max_value)
  }
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
