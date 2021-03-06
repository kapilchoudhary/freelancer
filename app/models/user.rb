# frozen_string_literal: true
# app/models/user.rb
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy

  after_create :create_profile


  private

  def create_profile
    Profile.create(user_id: id)
  end
end
