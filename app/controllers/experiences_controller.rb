class ExperiencesController < ApplicationController
  
  def index
    
    if params[:query].present?
      @experiences = Experience.global_search(params[:query])
    elsif params[:category].present?
      @category = Category.where(name: params[:category])
      @experiences = Experience.where(category_id: @category.ids)
    else
      @experiences = Experience.all
    end

    if current_user.posts.present?
      @user_preferences = PostCategory.where(post_id: current_user.posts.last.id)
      currentuser_preferences = []
      @user_preferences.each do |pc|
        currentuser_preferences << pc.category.id
      end
    if @user_preferences.present?
      @experiences = Experience.where(category_id: currentuser_preferences)
      @experiences += Experience.all
      @experiences = @experiences.uniq
    end
  end
  end

  def show
    @experience = Experience.find(params[:id])
    @order = Order.new
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
    params.require(:experience).permit(:name, :price, :public_price, :description, :validity_date, :category_id, :user_id, :partner_logo, :partner_name, :photo_experience)
  end
end
