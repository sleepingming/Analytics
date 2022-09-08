class HeinzDataController < ApplicationController

  def index
    @heinz_data = HeinzDatum.all
  end
end
