class SuplentesController < ApplicationController

  # GET /suplentes
  # GET /suplentes.json
  def index
    @suplentes = Suplente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suplentes }
    end
  end

  # GET /suplentes/1
  # GET /suplentes/1.json
  def show
    @suplente = Suplente.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suplente }
    end
  end

  # GET /suplentes/new
  # GET /suplentes/new.json
  def new
    @suplente = Suplente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suplente }
    end
  end

  # GET /suplentes/1/edit
  def edit
    @suplente = Suplente.find(params[:id])
  end

  # POST /suplentes
  # POST /suplentes.json
  def create
    @suplente = Suplente.new(params[:suplente])

    respond_to do |format|
      if @suplente.save
        format.html { redirect_to @suplente, notice: 'Lista acuerdo was successfully created.' }
        format.json { render json: @suplente, status: :created, location: @suplente }
      else
        format.html { render action: "new" }
        format.json { render json: @suplente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /suplentes/1
  # PUT /suplentes/1.json
  def update
    @suplente = Suplente.find(params[:id])

    respond_to do |format|
      if @suplente.update_attributes(params[:suplente])
        format.html { redirect_to @suplente, notice: 'Lista acuerdo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @suplente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suplentes/1
  # DELETE /suplentes/1.json
  def destroy
    @suplente = Suplente.find(params[:id])
    @suplente.destroy

    respond_to do |format|
      format.html { redirect_to suplentes_url }
      format.json { head :no_content }
    end
  end
  
end


