module Api
	module V1
		class AdminUsersController<ApplicationController
		
		respond_to :json
			
			def index
				respond_with AdminUser.all
			end
				

			def create
				respond_with AdminUser.create(params[:resume])
				end
			def destory
				respond_with AdminUser.destory(params[:id])
			end
			end
		end
	end
