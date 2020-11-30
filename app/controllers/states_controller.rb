class StatesController < ApplicationController
  def index
    @states = State.all_from_api.sort_by(&:initials)
  end
end
