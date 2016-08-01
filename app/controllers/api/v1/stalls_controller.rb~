class API::V1::StallsController < ApplicationController

  before_action :set_content, only: [:show, :update, :destroy]

  def index
  
   @stalls = Stall.all
   
   @stalls = @stalls.searchname(params[:name]) if params[:name]
   @stalls = @stalls.searchplace(params[:place]) if params[:place]
   #@stalls = @stalls.search(params[:place]) if params[:place]
   # @stalls = @stalls.where(:name => name) if name.value.present?
   render json: @stalls

  end
  
  def show 
   render json: @stall if stale?(@stall)
  end

  def new 
   
  end 

  def delete
  end
  
  def create 
   @stall = Stall.new(stall_params)
   
   if @stall.save
      render json: @stall, status: :created
   else
      render json: @stall.errors, status: :unprocessable_entity
   end 
  
  end

  def update
  end

  def findbyname
   @stalls = Stall.all

   @stalls = @stalls.where(:name => params[:name])
  end
  private
  def stall_params
	params.permit(:name, :place)
  end
end
