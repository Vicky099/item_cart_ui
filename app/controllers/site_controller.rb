class SiteController < ApplicationController
  def index
    render json: ItemService.new.line_item_list
  end
end
