class API::V1::StallsController < ApplicationController
  before_action :set_content, only: [:show, :update, :destroy]

  def index
  
   @stalls = Stall.all
   
   @stalls = @stalls.search(params[:name]) if params[:name]
    #@stalls = @stalls.where(:name => name) if name.value.present?
   render json: @stalls

  end
  
  def show 
  end

  def new 
  end 

  def delete
  end
  
  def create 
  end

  def update
  end

  def findbyname
   @stalls = Stall.all

   @stalls = @stalls.where(:name => params[:name])
  end
  
end
