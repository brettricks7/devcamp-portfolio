class PortfoliosController < ApplicationController
  def index
    @porftfolio_items = Portfolio.all
  end



end
