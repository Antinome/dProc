class PagesController < ApplicationController
  
  http_basic_authenticate_with :name => "engineer", :password => "engineer", :only => [:destroy]
  
   def create
    @task= Task.find(params[:task_id])
    @page = @task.pages.create(params[:page])
    redirect_to task_path(@task)  
   end
   
   def destroy
    @task= Task.find(params[:task_id])
    @page = @task.pages.find(params[:id])
    @page.destroy
    redirect_to task_path(@task)  
   end
end
