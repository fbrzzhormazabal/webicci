class FuturestudentsController < ApplicationController
    before_action :find_futurestudent, except: [:new,:create,:index]

    def index
        @futurestudents = Futurestudent.all
    end

    def new
        @futurestudent = Futurestudent.new        
    end

    def create
        @futurestudent = Futurestudent.create(Name: params[:futurestudent][:Name],Mother_Name: params[:futurestudent][:Mother_Name],Father_Name: params[:futurestudent][:Father_Name],Email: params[:futurestudent][:Email],Run: params[:futurestudent][:Run],Dv: params[:futurestudent][:Dv],Birthday: params[:futurestudent][:Birthday],Password: params[:futurestudent][:Password])
        if @futurestudent.save
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
        @futurestudent.update(Name: params[:futurestudent][:Name],Mother_Name: params[:futurestudent][:Mother_Name],Father_Name: params[:futurestudent][:Father_Name],Email: params[:futurestudent][:Email],Run: params[:futurestudent][:Run],Dv: params[:futurestudent][:Dv],Birthday: params[:futurestudent][:Birthday],Password: params[:futurestudent][:Password])
        
        redirect_to @futurestudent
    end

    def destroy
        @futurestudent.destroy

        redirect_to root_path
    end

    def find_futurestudent
        @futurestudent = Futurestudent.find(params[:id])
    end
end
