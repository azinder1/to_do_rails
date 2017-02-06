class ChoresController < ApplicationController
  def index
    @chores = Chore.all
    render :index
  end
  def show
   @chore = Chore.find(params[:id])
   render :show
 end
 def new
   @chore = Chore.new
   render :new
 end
 def create
   @chore = Chore.new(chore_params)
   if @chore.save
     redirect_to chores_path
   else
     render :new
   end
 end
 def update
   @chore = Chore.find(params[:id])
   if @chore.update(list_params)
     redirect_to chores_path
   else
     render :edit
   end
 end
 def destroy
  @chore = Chore.find(params[:id])
  @chore.destroy
  redirect_to chores_path
end
 private
 def chore_params
   params.require(:chore).permit(:name)
 end
end
