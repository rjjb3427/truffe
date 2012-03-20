class IndexController < ApplicationController
	USERNAME, PASSWORD = "asagao", "pasmo"

	before_filter :authenticate

	private

	def authenticate
		authenticate_or_request_with_http_basic do |username, password|
			username == USERNAME &&
			Digest::SHA1.hexdigest(password) == PASSWORD
		end
	end
end
