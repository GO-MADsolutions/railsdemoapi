class API::V1::StallsController < ApplicationController
  before_action :set_content, only: [:show, :update, :destroy]

  def index
  
   @stalls = Stall.all
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

  
end
