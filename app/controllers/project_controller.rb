class ProjectController < ApplicationController
    http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard 

    
    def new
    end

    def create
        @project=Project.create(project_params)
    end
    
    def project_params
        {name: params[:nombre], 
         description: params[:descripcion],
         startdate: params[:fec_comienzo],
         enddate: params[:fec_termino],
         state: params[:estado]}
    end

    def dashboard
        @projects=Project.all
        if params[:estado].present?
            @projects=Project.where('state = ?', params[:estado])
        else
            #@projects=Project.find_valid
        end
    end

end
