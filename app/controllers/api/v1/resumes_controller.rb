module Api
	module V1
		
		class ResumesController<ApplicationController
			
		respond_to :json
			
			def index
				respond_with Resume.all
			end
			
			def create
				respond_with  Resume.create(params[:resume])
				end
			def destory
				respond_with Resume.destory(params[:id])
			end
			end
		end
	end
