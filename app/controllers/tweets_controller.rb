class TweetsController < ApplicationController

    #/tweets
    def index
        render json: {status: 200, tweet: Tweet.all}
    end

    #/tweets/:id
    def show
        tweet = Tweet.find(params[:id])
        render(json: {tweet: tweet})
    end

end