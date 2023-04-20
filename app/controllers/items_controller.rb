class ItemsController < ApplicationController
  def index
    # ビューファイルを呼び出す
    render 'items/index'
  end
end
