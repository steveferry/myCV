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
  
  def update
    @cv = Cv.find(params[:id])
    @test = getContent
    @cv.json_content = Content.new({:school=>[@test['school']],:work=>@test['work']})
    if @cv.update(getParams)
      redirect_to @cv
    else
      render 'edit'
    end
  end
  def getParams
    params[:cv].permit(:content)
  end
  def getContent
    params[:content]
  end
end
