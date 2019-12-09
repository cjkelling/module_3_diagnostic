class SearchController < ApplicationController
  def index
    render locals: {
      results: Search.new(params[:house])
    }
  end
end
