class PagesController < ApplicationController
  def index
  	@exchanges = Exchange.all #.select { |e| Time.at(e.registration_end) > DateTime.now }

    respond_to do |format|
      format.html
      format.json { render json: @exchanges }
    end
  end
end
