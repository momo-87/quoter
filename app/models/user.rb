# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  belongs_to :company, optional: true

  attr_accessor :company_name # This makes `company_name` available in the form

  def name
    email.split('@').first.capitalize
  end
end
