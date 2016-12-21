class Contact < ActiveRecord::Base
	after_create :send_welcome_email
	self.inheritance_column = nil

	private

  def send_welcome_email
    ContactMailer.welcome(self).deliver_now
  end
end
