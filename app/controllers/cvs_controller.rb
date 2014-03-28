class CvsController < ApplicationController
  def index
    @cvs = Cv.all
  end
  
  def show
    @cv = Cv.find(params[:id])
  end
  
  def edit
    @cv = Cv.find(params[:id])
  end
end
