class InicioController < ApplicationController
  def index
    if session[:student_id]
      @student = Student.find_by(id: session[:student_id])
      
    end
  end
end
