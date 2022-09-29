# frozen_string_literal: true

class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = 'You have entered an empty search string'
    else
      StockQuote::Stock.new(api_key: 'pk_2663c2be3e3c4faf90680bb2c50dea1b')
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = 'You have entered an incorrect symbol' unless @stock
    end
    render partial: 'users/result'
  end
end
