class StatesController < ApplicationController
  def index
    @states = State.all_from_api
  end
end
