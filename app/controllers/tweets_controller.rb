class TweetsController < ApplicationController

	before_action :set_tweet, only: [:show, :edit, :update, :destroy]

	def index
		@tweets = Tweet.all
		# @updated.tweet = Tweet.all.order(updated_at: :desc)
	end

	def show
	end

	def edit
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
			redirect_to tweets_path, notice: 'Your tweet was published!'
		else
			render :new
		end
	end

	def update
		if @tweet.update_attributes(tweet_params)
			redirect_to tweets_path, notice: 'Your tweet was succesfully updated!'
		else
			render :edit
		end
	end

	def destroy
		@tweet.destroy
		redirect_to tweets_path, notice: 'Your tweet was succesfully deleted!'
	end

	private

	def set_tweet
		@tweet = Tweet.find(params[:id])
	end

	def tweet_params
		params.require(:tweet).permit(:handle, :content)
	end

end