class TestsController < ApplicationController
  
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    Test.create(test_params)
    redirect_to tests_path
  end

  private
  def test_params
    params.require(:test).permit(:text, :image)
  end


end
