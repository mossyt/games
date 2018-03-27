class TweetsController < ApplicationController
	$twitter = Twitter::REST::Client.new do |config|
  		config.consumer_key        = "84BFMXnFnCk7V5jf5aBOYSq3c"
  		config.consumer_secret     = "nxEH63C5bJmbTFxdoXZ8UQaFg5f315vtcSMfxAuJyg2iFiwn5n"
  		config.access_token        = "855551275-UetPqMAYIet9Ran8FuW3LPHmmtAPpSxvTTnS9No0"
  		config.access_token_secret = "njQT6ctpvrdniVptqWPHtQZRrFlcU3MECGYXwEk6mAYzI"
  end
  	
  def index
		  @tweets = []
      $twitter.search('IGN', lang: "en", result_type: "recent").take(30).collect.each do |object|
 		  
        if object.is_a?(Twitter::Tweet)
           @tweets.push(object.full_text)
 	     end
  end

	end
end
