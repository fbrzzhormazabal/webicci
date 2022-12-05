class StudentsController < ApplicationController

    def new
        @student = Student.new        
    end

    def create
        @student = Student.create(Name: params[:student][:Name],Mother_Name: params[:student][:Mother_Name],Father_Name: params[:student][:Father_Name],Email: params[:student][:Email],Run: params[:student][:Run],Dv: params[:student][:Dv],Telefono: params[:student][:Telefono],Birthday: params[:student][:Birthday],Year_Ingre: params[:student][:Year_Ingre],Password: params[:student][:Password])
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])      
        @student.update(Name: params[:student][:Name],Mother_Name: params[:student][:Mother_Name],Father_Name: params[:student][:Father_Name],Email: params[:student][:Email],Run: params[:student][:Run],Dv: params[:student][:Dv],Telefono: params[:student][:Telefono],Birthday: params[:student][:Birthday],Year_Ingre: params[:student][:Year_Ingre],Password: params[:student][:Password])
        
        redirect_to @student
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy

        redirect_to root_path
    end
  
end
