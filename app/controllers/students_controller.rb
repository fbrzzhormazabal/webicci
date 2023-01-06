class StudentsController < ApplicationController
    before_action :find_student, except: [:new,:create,:index]

    def index
        @students = Student.all
    end

    def new
        @student = Student.new        
    end

    def create
        @student = Student.create(Name: params[:student][:Name],Mother_Name: params[:student][:Mother_Name],Father_Name: params[:student][:Father_Name],Email: params[:student][:Email],Run: params[:student][:Run],Dv: params[:student][:Dv],Telefono: params[:student][:Telefono],Birthday: params[:student][:Birthday],Year_Ingre: params[:student][:Year_Ingre],password_digest: params[:student][:password_digest],Password: params[:student][:Password])
        if @student.save
            session[:student_id] = @student.id
            redirect_to root_path, notice: "Registrado correctamente"
        else 
            render :new
        end  
    end

    def show
    end

    def edit
    end

    def update      
        @student.update(Name: params[:student][:Name],Mother_Name: params[:student][:Mother_Name],Father_Name: params[:student][:Father_Name],Email: params[:student][:Email],Run: params[:student][:Run],Dv: params[:student][:Dv],Telefono: params[:student][:Telefono],Birthday: params[:student][:Birthday],Year_Ingre: params[:student][:Year_Ingre],Password: params[:student][:Password])
        
        redirect_to @student
    end

    def destroy
        @student.destroy

        redirect_to root_path
    end

    def find_student
        @student = Student.find(params[:id])
    end
  
end
