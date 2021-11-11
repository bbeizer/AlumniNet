class SearchController < ApplicationController

  def index
    @courses = Course.search(params[:search])
  end

  def search
    if params[:subject].present?
      @courses = Subject.find(params[:subject]).courses
    end
    if params[:course_name].present?
      @courses ||= Course.all
      @courses = @courses.where("name LIKE ?", "%#{params[:course_name]}%")
    end
 end


  def show

    respond_to do |format|
      format.html 
      render :partial => 'index/show' , locals => {:courses => @courses} 
   end
end
end
