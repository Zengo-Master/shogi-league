class KifusController < ApplicationController
  before_action :set_kifu, only: [:edit, :update, :show, :destroy]

  def new
    @kifu = Kifu.new
  end

  def create
    @kifu = Kifu.create(kifu_params)
    if @kifu.valid?
      @kifu.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @kifu.update(kifu_params)
      redirect_to kifu_path(@kifu.id)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    if @kifu.destroy
      redirect_to root_path
    else
      redirect_to kifu_path(@kifu.id)
    end
  end

  private

  def kifu_params
    params.require(:kifu).permit(:date, :sente_id, :gote_id, :result_id, :kifu)
  end

  def set_kifu
    @kifu = Kifu.find(params[:id])
  end
end
