class PanelController < ApplicationController
  def index
    summary = File.read('app/assets/json/summary.json')

    @total_sales = 3000
  end
end