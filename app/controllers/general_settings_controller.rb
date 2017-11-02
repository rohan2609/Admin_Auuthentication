class GeneralSettingsController < ApplicationController
	def new
		@general_setting = current_user.general_setting
	end
end
