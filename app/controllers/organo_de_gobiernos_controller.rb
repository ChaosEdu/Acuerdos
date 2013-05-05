class OrganoDeGobiernosController < ApplicationController
  # GET /organo_de_gobiernos
  # GET /organo_de_gobiernos.json
  def index
    @organo_de_gobiernos = OrganoDeGobierno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organo_de_gobiernos }
    end
  end

  # GET /organo_de_gobiernos/1
  # GET /organo_de_gobiernos/1.json
  def show
    @organo_de_gobierno = OrganoDeGobierno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organo_de_gobierno }
    end
  end

  # GET /organo_de_gobiernos/new
  # GET /organo_de_gobiernos/new.json
  def new
    @organo_de_gobierno = OrganoDeGobierno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organo_de_gobierno }
    end
  end

  # GET /organo_de_gobiernos/1/edit
  def edit
    @organo_de_gobierno = OrganoDeGobierno.find(params[:id])
  end

  # POST /organo_de_gobiernos
  # POST /organo_de_gobiernos.json
  def create
    @organo_de_gobierno = OrganoDeGobierno.new(params[:organo_de_gobierno])

    respond_to do |format|
      if @organo_de_gobierno.save
        format.html { redirect_to @organo_de_gobierno, notice: 'Organo de gobierno was successfully created.' }
        format.json { render json: @organo_de_gobierno, status: :created, location: @organo_de_gobierno }
      else
        format.html { render action: "new" }
        format.json { render json: @organo_de_gobierno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organo_de_gobiernos/1
  # PUT /organo_de_gobiernos/1.json
  def update
    @organo_de_gobierno = OrganoDeGobierno.find(params[:id])

    respond_to do |format|
      if @organo_de_gobierno.update_attributes(params[:organo_de_gobierno])
        format.html { redirect_to @organo_de_gobierno, notice: 'Organo de gobierno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organo_de_gobierno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organo_de_gobiernos/1
  # DELETE /organo_de_gobiernos/1.json
  def destroy
    @organo_de_gobierno = OrganoDeGobierno.find(params[:id])
    @organo_de_gobierno.destroy

    respond_to do |format|
      format.html { redirect_to organo_de_gobiernos_url }
      format.json { head :no_content }
    end
  end
end
