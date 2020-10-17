class ResultsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :show, :destroy]

  def index
    @members = Member.all
    @kifs = Kif.all
  end

  def new
    @kif = Result.new
  end

  def create
    @kif = Result.create(result_params)
    if @kif.valid?
      @kif.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @result.update(result_params)
      redirect_to result_path(@result.id)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    if @kif.destroy
      redirect_to root_path
    else
      redirect_to result_path(@result.id)
    end
  end

  def win_or_lose
    resultAry = params[:id].split("_")
    result_win = Result.find(resultAry[0])
    result_lose = Result.find(resultAry[1])
    if result_win.result == "○"
      result_win.update(result: "")
      result_lose.update(result: "")
    else result_win.result == ""
      result_win.update(result: "○")
      result_lose.update(result: "●")
    end
  end

  private

  # def result_params
  #   params.require(:kif).permit(:)
  # end

  def set_result
    @result = Result.find(params[:id])
  end

end
