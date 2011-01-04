class LabosController < ApplicationController
  # GET /labos
  # GET /labos.xml
  def index
    @labos = Labo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @labos }
    end
  end

  # GET /labos/1
  # GET /labos/1.xml
  def show
    @labo = Labo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @labo }
    end
  end

  # GET /labos/new
  # GET /labos/new.xml
  def new
    @labo = Labo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @labo }
    end
  end

  # GET /labos/1/edit
  def edit
    @labo = Labo.find(params[:id])
  end

  # POST /labos
  # POST /labos.xml
  def create
    @labo = Labo.new(params[:labo])

    respond_to do |format|
      if @labo.save
        format.html { redirect_to(@labo, :notice => 'Labo was successfully created.') }
        format.xml  { render :xml => @labo, :status => :created, :location => @labo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @labo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /labos/1
  # PUT /labos/1.xml
  def update
    @labo = Labo.find(params[:id])

    respond_to do |format|
      if @labo.update_attributes(params[:labo])
        format.html { redirect_to(@labo, :notice => 'Labo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @labo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /labos/1
  # DELETE /labos/1.xml
  def destroy
    @labo = Labo.find(params[:id])
    @labo.destroy

    respond_to do |format|
      format.html { redirect_to(labos_url) }
      format.xml  { head :ok }
    end
  end
end
