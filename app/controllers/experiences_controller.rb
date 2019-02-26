class ExperiencesController < ApplicationController
  def index
    skip_policy_scope
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
    authorize @experience
  end

  # def new
  #   @experience = Experience.new
  #   authorize @experience
  # end

  # def edit
  #   @experience = Experience.find(params[:id])
  #   authorize @experience
  # end

  # def create
  #   @experience = Experience.new(experiences_params)
  #   authorize @experience
  #   @experience.user = current_user
  #   if @experience.save
  #     redirect_to experience_path(@experience)
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   @experience.update(experiences_params)
  #   authorize @experience
  #   redirect_to experience_path(@experience)
  # end

  # def destroy
  #   @experience = Experience.find(params[:id])
  #   @experience.destroy
  #   authorize @experience
  #   # if @experience.destroy
  #   #   redirect_to manage_path
  #   # else
  #   #   redirect_to manage_path
  #   # end
  # end

  private

  def experiences_params
    params.require(:experience).permit(:name, :luma_price, :public_price, :description, :validity_date, :category_id, :user_id, :partner_logo, :partner_name, :photo_experience)
  end
end
