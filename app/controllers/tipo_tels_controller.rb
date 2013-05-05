class TipoTelsController < ApplicationController
  # GET /tipo_tels
  # GET /tipo_tels.json
  def index
    @tipo_tels = TipoTel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_tels }
    end
  end

  # GET /tipo_tels/1
  # GET /tipo_tels/1.json
  def show
    @tipo_tel = TipoTel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_tel }
    end
  end

  # GET /tipo_tels/new
  # GET /tipo_tels/new.json
  def new
    @tipo_tel = TipoTel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_tel }
    end
  end

  # GET /tipo_tels/1/edit
  def edit
    @tipo_tel = TipoTel.find(params[:id])
  end

  # POST /tipo_tels
  # POST /tipo_tels.json
  def create
    @tipo_tel = TipoTel.new(params[:tipo_tel])

    respond_to do |format|
      if @tipo_tel.save
        format.html { redirect_to @tipo_tel, notice: 'Tipo tel was successfully created.' }
        format.json { render json: @tipo_tel, status: :created, location: @tipo_tel }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_tel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_tels/1
  # PUT /tipo_tels/1.json
  def update
    @tipo_tel = TipoTel.find(params[:id])

    respond_to do |format|
      if @tipo_tel.update_attributes(params[:tipo_tel])
        format.html { redirect_to @tipo_tel, notice: 'Tipo tel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_tel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_tels/1
  # DELETE /tipo_tels/1.json
  def destroy
    @tipo_tel = TipoTel.find(params[:id])
    @tipo_tel.destroy

    respond_to do |format|
      format.html { redirect_to tipo_tels_url }
      format.json { head :no_content }
    end
  end
end
