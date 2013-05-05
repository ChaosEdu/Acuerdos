class TipoEmailsController < ApplicationController
  # GET /tipo_emails
  # GET /tipo_emails.json
  def index
    @tipo_emails = TipoEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_emails }
    end
  end

  # GET /tipo_emails/1
  # GET /tipo_emails/1.json
  def show
    @tipo_email = TipoEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_email }
    end
  end

  # GET /tipo_emails/new
  # GET /tipo_emails/new.json
  def new
    @tipo_email = TipoEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_email }
    end
  end

  # GET /tipo_emails/1/edit
  def edit
    @tipo_email = TipoEmail.find(params[:id])
  end

  # POST /tipo_emails
  # POST /tipo_emails.json
  def create
    @tipo_email = TipoEmail.new(params[:tipo_email])

    respond_to do |format|
      if @tipo_email.save
        format.html { redirect_to @tipo_email, notice: 'Tipo email was successfully created.' }
        format.json { render json: @tipo_email, status: :created, location: @tipo_email }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_emails/1
  # PUT /tipo_emails/1.json
  def update
    @tipo_email = TipoEmail.find(params[:id])

    respond_to do |format|
      if @tipo_email.update_attributes(params[:tipo_email])
        format.html { redirect_to @tipo_email, notice: 'Tipo email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_emails/1
  # DELETE /tipo_emails/1.json
  def destroy
    @tipo_email = TipoEmail.find(params[:id])
    @tipo_email.destroy

    respond_to do |format|
      format.html { redirect_to tipo_emails_url }
      format.json { head :no_content }
    end
  end
end
