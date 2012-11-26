class StaticPagesController < ApplicationController
	def home
		@users = User.all		

		pr = params[:make_admin]
		if(!pr.nil?)
	 		u = User.find(pr)
			u.admin=true
			if 	u.save
		       flash[:notice] = 'Make admin successfully.'
		    else
		       format.html { render action: "new" }
		       format.json { render json: @order.errors, status: :unprocessable_entity }
		     end
		end

		pr = params[:remove_admin]
		if(!pr.nil?)
	 		u = User.find(pr)
			u.admin=false
			if 	u.save
		       flash[:notice] = 'Make admin successfully.'
		    else
		       format.html { render action: "new" }
		       format.json { render json: @order.errors, status: :unprocessable_entity }
		     end
		end


	end
end
