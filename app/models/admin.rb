class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :id, :email, :first_name, :last_name, :payment_received, 
  :encrypted_password, :reset_password_token, :reset_password_sent_at, 
  :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, 
  :current_sign_in_ip, :last_sign_in_ip, :first_name, :second_name, :authenticationcode, 
  :payment_received, :created_at, :updated_at, :password, :password_confirmation
end
