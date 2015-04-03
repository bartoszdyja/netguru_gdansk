class UsersController < ApplicationController
	expose :users
	expose :user
	expose :reviews
	def show
		last_5 = reviews
	end

	def index
	end

end
