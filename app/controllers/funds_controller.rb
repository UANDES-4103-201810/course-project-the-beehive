class FundsController < ApplicationController
  def new
  	@project=Project.find(params[:id])
  end

  def create
  	@fund = Fund.new(fund_params)
  	@project= Project.find(params[:id])
    @project.funders += 1
    @project.save
    respond_to do |format|
      if @fund.save
        format.html { redirect_to @project, notice: 'Fund successfully.' }
      else
        format.html { render :new }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  def fund_params
    params.require(:fund).permit(:amount,:user_id,:project_id)
  end
end
