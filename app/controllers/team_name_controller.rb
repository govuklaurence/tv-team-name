class TeamNameController < ApplicationController
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
    @colour = params[:colour] || '#333'
    @team_name = params[:team_name].gsub('_', '.').gsub('__', '_')
  end
end
