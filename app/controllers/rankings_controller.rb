class RankingsController < ApplicationController
  def show; end

  def locale
    @ranking = Ranking.from_locale_api(params[:locale_id])
  end
end
