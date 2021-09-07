class ElementsController < ApplicationController
  def index
    @elements = Element.all
  end

  def show
    @element = Element.find_by_name(params[:name])
  end
end