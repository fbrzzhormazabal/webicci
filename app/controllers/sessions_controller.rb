class SessionsController < ApplicationController
    def new
        
    end

    def create
        student = Student.find_by(Email: params[:Email])
        if student.present?
            session[:student_id] = student.id
            redirect_to root_path, notice: "Logeado correctamente"
        else
            flash[:alert] = "Correo o contraseña incorrectas"
            render :new
        end
    end

    def destroy
        session[:student_id] = nil   
        redirect_to root_path, notice: "Desconectado"     
    end
end