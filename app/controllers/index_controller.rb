class IndexController < ApplicationController
	USERS = { "lifo" => "world" }

	before_filter :authenticate

	def index
	end

	private

	def authenticate
		authenticate_or_request_with_http_digest do |username|
			USERS[username]
		end
	end
end
