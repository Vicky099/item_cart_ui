class SiteController < ApplicationController
  def index
    @items = ItemService.new.line_item_list
  end
end
