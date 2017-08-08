class TeamNameController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
  end

  def create_sign
    sign_params = params.permit(:team_name, :colour)
    team_name = sign_params[:team_name]
    colour = sign_params[:colour]
    uri_team_name = URI::encode(sign_params[:team_name]).gsub('_', '__').gsub('.', '_')
    uri_colour = URI::encode(sign_params[:colour])

    if !team_name.strip.empty? && !colour.strip.empty?
      redirect_to "/sign/#{uri_team_name}/#{uri_colour}"
    elsif !team_name.strip.empty?
      redirect_to "/sign/#{uri_team_name}"
    else
      redirect_to "/create"
    end
  end

  def sign
    @colour = params[:colour]
    @team_name = params[:team_name].gsub('_', '.').gsub('__', '_')
    @page_title = "#{params[:team_name].gsub('_', '.').gsub('__', '_')} – "
  end
  before_action :set_colours
  def set_colours
    @colour_palette = [
      "purple",
      "mauve",
      "fuschia",
      "pink",
      "baby-pink",
      "red",
      "mellow-red",
      "orange",
      "brown",
      "yellow",
      "grass-green",
      "green",
      "turquoise",
      "light-blue"
    ]
  end
end
