class TeachersController < ApplicationController
    before_action :find_teacher, except: [:new,:create]

    def new
        @teacher = Teacher.new        
    end

    def create
        @teacher = Teacher.create(Name: params[:teacher][:Name],Mother_Name: params[:teacher][:Mother_Name],Father_Name: params[:teacher][:Father_Name],Email: params[:teacher][:Email],Run: params[:teacher][:Run],Dv: params[:teacher][:Dv],Telefono: params[:teacher][:Telefono],Year_Teacher: params[:teacher][:Year_Teacher],Birthday: params[:teacher][:Birthday],Year_Egreso: params[:teacher][:Year_Egreso],Year_Ingreso: params[:teacher][:Year_Ingreso],Password: params[:teacher][:Password])
    end

    def show
    end

    def edit
    end

    def update      
        @teacher.update(Name: params[:teacher][:Name],Mother_Name: params[:teacher][:Mother_Name],Father_Name: params[:teacher][:Father_Name],Email: params[:teacher][:Email],Run: params[:teacher][:Run],Dv: params[:teacher][:Dv],Telefono: params[:teacher][:Telefono],Year_Teacher: params[:teacher][:Year_Teacher],Birthday: params[:teacher][:Birthday],Year_Egreso: params[:teacher][:Year_Egreso],Year_Ingreso: params[:teacher][:Year_Ingreso],Password: params[:teacher][:Password])
        
        redirect_to @teacher
    end

    def destroy
        @teacher.destroy

        redirect_to @teacher
    end

    def find_teacher
        @teacher = Teacher.find(params[:id])
    end
end
