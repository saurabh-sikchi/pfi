# == Schema Information
#
# Table name: admins
#
#  id                 :integer          not null, primary key
#  email              :string
#  crypted_password   :string
#  password_salt      :string
#  persistence_token  :string
#  login_count        :integer          default("0"), not null
#  failed_login_count :integer          default("0"), not null
#  last_request_at    :datetime
#  current_login_at   :datetime
#  last_login_at      :datetime
#  current_login_ip   :string
#  last_login_ip      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Admin < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = :email
  end
end
