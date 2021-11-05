require 'json'

class PanelController < ApplicationController
  def index    

    # Fetching json file for numbers
    file_info = File.read('app/assets/json/summary.json')
    data_info =  JSON.parse(file_info)

    # Fetching json file for headers
    file_headers = File.read('app/assets/json/headers.json')
    data_headers = JSON.parse(file_headers)
   
    # Loading headers into global variables
    @total_rent_header = data_headers["rent"]["quantity"]
    @type_rent_header = data_headers["rent"]["type"]
    @avg_rent_header = data_headers["rent"]["price"]["avg"]

    @total_sale_header = data_headers["sale"]["quantity"]
    @type_sale_header = data_headers["sale"]["type"]
    @avg_sale_header = data_headers["sale"]["price"]["avg"]


    # Loading info into global variables
    @total_rent = data_info["rent"]["count"]
    @avg_rent = data_info["rent"]["price"]["avg"]

    @total_sale = data_info["sale"]["count"]
    @avg_sale = data_info["sale"]["price"]["avg"]

  end
end