class StaticPagesController < ApplicationController
	def subway
  		@pageview = Pageview.create(url: "subway", ip: (request.remote_ip.to_s))
  	end
end
