class TweetsController < ApplicationController

    #/tweets
    def index
        render json: {status: 200, tweet: Tweet.all}
    end

    def show
    end

end