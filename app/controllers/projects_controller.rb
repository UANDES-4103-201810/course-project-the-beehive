# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  def favorite
    @project = Project.find(params[:favorite_project])
    @user= User.find(params[:favorite_user])
    @favorite = Favorite.new(project: @project, user: @user)
    if @favorite.save
      redirect_to @project, notice: 'Added to favorites!'
    else
      redirect_to @project, notice: 'Failed'
    end
  end

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.search(params[:search])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    @user ||= User.find_by(id: @project.user_id)
    @promises = Promise.where(project_id: @project.id)
    @category = Category.find_by(id: @project.category_id)
    @funders = Fund.where(project_id: @project.id).count
    @amount = Fund.where(project_id: @project.id).sum(:amount)
    @favorite=Favorite.where(project_id: @project.id, user_id: @user.id)
  end

  # GET /projects/new
  def new
    @project = Project.new
    @categories = Category.all
  end

  # GET /projects/1/edit
  def edit
    @categories = Category.all
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new_fund
    @project = Project.find(params[:id])
    @user ||= User.find_by(id: @project.user_id)
  end

  def create_fund
    @project
    @fund= Fund.new(params[:fund])
    @project.update(actual: @project.actual + params[:q])
    respond_to do |format|
      if 0
        format.html { redirect_to @project, notice: 'Funded successfully.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :show }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_params
    params.require(:project).permit(:name, :user_id, :description, :goal, :actual, :date_limit, :funders, :category_id)
  end
end
