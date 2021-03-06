# frozen_string_literal: true

class Api::V1::RecentlyHeardsController < ApplicationController
  def create
    @recently_heards = current_user.recently_heards.create(album_id: params[:album_id])
    head :ok
  end
end
