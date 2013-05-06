class EntidadParaestatalsController < ApplicationController

def index
    @entidad_paraestatals = EntidadParaestatal.search(params[:search])
  
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entidad_paraestatals }
    end
  end

  # GET /entidad_paraestatals/1
  # GET /entidad_paraestatals/1.json
  def show
    @entidad_paraestatal = EntidadParaestatal.includes(:tipo_entidad, :organo_de_gobierno, :secretaria, empleados: [:puestos_entidad]).find(params[:id])
    @sesion = Sesion.where(:entidad_paraestatal_id => @entidad_paraestatal.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entidad_paraestatal }
    end
  end

  # GET /entidad_paraestatals/new
  # GET /entidad_paraestatals/new.json
  def new
    @entidad_paraestatal = EntidadParaestatal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entidad_paraestatal }
    end
  end

  # GET /entidad_paraestatals/1/edit
  def edit
    @entidad_paraestatal = EntidadParaestatal.find(params[:id])
  end

  # POST /entidad_paraestatals
  # POST /entidad_paraestatals.json
  def create
    @entidad_paraestatal = EntidadParaestatal.new(params[:entidad_paraestatal])

    respond_to do |format|
      if @entidad_paraestatal.save
        format.html { redirect_to @entidad_paraestatal, notice: 'Entidad Paraestatal was successfully created.' }
        format.json { render json: @entidad_paraestatal, status: :created, location: @entidad_paraestatal }
      else
        format.html { render action: "new" }
        format.json { render json: @entidad_paraestatal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entidad_paraestatals/1
  # PUT /entidad_paraestatals/1.json
  def update
    @entidad_paraestatal = EntidadParaestatal.find(params[:id])

    respond_to do |format|
      if @entidad_paraestatal.update_attributes(params[:entidad_paraestatal])
        format.html { redirect_to @entidad_paraestatal, notice: 'Entidad Paraestatal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entidad_paraestatal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entidad_paraestatals/1
  # DELETE /entidad_paraestatals/1.json
  def destroy
    @entidad_paraestatal = EntidadParaestatal.find(params[:id])
    @entidad_paraestatal.destroy

    respond_to do |format|
      format.html { redirect_to entidad_paraestatals_url }
      format.json { head :no_content }
    end
  end
  def pie_chart_for_solutions
    count = {}
    Solution.all.each do |solution|
      count[solution.user] ||= 0
      count[solution.user] += 1
    end

    total = Solution.count
    data = count.collect { |user, number| number }
    labels = count.collect do |user, number|
     "#{user.name} (#{total == 0 ? 0 : (100.0 * number / total).round}%)"
    end

    Gchart.pie(:data => data, :labels => labels, :size => '695x380',
               :theme => :thirty7signals)
  end

end

