class ContactsController < ApplicationController

	def create
		@contact = Contact.new(contact_params)
			if @contact.save
				redirect_to root_path, notice: "Merci, nous avons pris votre demande en compte."
			else
				render :create
			end
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :phone, :mail)
	end

end
