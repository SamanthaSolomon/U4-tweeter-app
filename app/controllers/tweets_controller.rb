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

    #/tweets
    def create
        tweet = Tweet.new(tweet_params)
        if tweet.save
            render json: {tweet: tweet}
        else
            render(status: 422, json: {tweet: tweet, errors: tweet.errors})
        end
    end

    private

    def tweet_params
        params.require(:tweet).permit(:title, :content, :author)
    end
end