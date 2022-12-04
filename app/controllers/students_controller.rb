class StudentsController < ApplicationController

    def new
        @student = Student.new
        
    end

    def create
        @student = Student.create(Name: params[:student][:Name])
        @student = Student.create(Name: params[:student][:Mother_Name])
        @student = Student.create(Name: params[:student][:Father_Name])
        @student = Student.create(Name: params[:student][:Email])
        @student = Student.create(Name: params[:student][:Run])
        @student = Student.create(Name: params[:student][:Dv])
        @student = Student.create(Name: params[:student][:Telefono])
        @student = Student.create(Name: params[:student][:Birthday])
        @student = Student.create(Name: params[:student][:Year_Ingre])
        @student = Student.create(Name: params[:student][:Deleted_At])
        @student = Student.create(Name: params[:student][:Password])
        render json: @student
    end
end
