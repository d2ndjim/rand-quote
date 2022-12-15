class QuotesController < ApplicationController
  
  def index
    @quote = Quote.order('RANDOM()').first
  end

  def create
    @quote = Quote.create(quote_params)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:quote).permit(:text, :author)
  end
end
