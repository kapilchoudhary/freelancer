class Profile < ApplicationRecord
  belongs_to :user

  enum user_type: %i[recruiter freelancer]

  scope :freelancer_user, -> { where(user_type: 'freelancer') }

  scope :filter_rate, ->(start_amount, end_amount) {
    where('hourly_rate BETWEEN ? AND ?', start_amount, end_amount)
  }

  def full_name
    "#{first_name} #{last_name}"
  end
end
