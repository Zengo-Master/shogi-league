class ResultsController < ApplicationController
  def index
    @members = Member.all
    @kifus = Kifu.all.order('date DESC')
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
end
