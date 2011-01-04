class AanwezighedensController < ApplicationController
  # GET /aanwezighedens
  # GET /aanwezighedens.xml
  def index
    @aanwezighedens = Aanwezigheden.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aanwezighedens }
    end
  end

  # GET /aanwezighedens/1
  # GET /aanwezighedens/1.xml
  def show
    @aanwezigheden = Aanwezigheden.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aanwezigheden }
    end
  end

  # GET /aanwezighedens/new
  # GET /aanwezighedens/new.xml
  def new
    @aanwezigheden = Aanwezigheden.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aanwezigheden }
    end
  end

  # GET /aanwezighedens/1/edit
  def edit
    @aanwezigheden = Aanwezigheden.find(params[:id])
  end

  # POST /aanwezighedens
  # POST /aanwezighedens.xml
  def create
    @aanwezigheden = Aanwezigheden.new(params[:aanwezigheden])

    respond_to do |format|
      if @aanwezigheden.save
        format.html { redirect_to(@aanwezigheden, :notice => 'Aanwezigheden was successfully created.') }
        format.xml  { render :xml => @aanwezigheden, :status => :created, :location => @aanwezigheden }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aanwezigheden.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aanwezighedens/1
  # PUT /aanwezighedens/1.xml
  def update
    @aanwezigheden = Aanwezigheden.find(params[:id])

    respond_to do |format|
      if @aanwezigheden.update_attributes(params[:aanwezigheden])
        format.html { redirect_to(@aanwezigheden, :notice => 'Aanwezigheden was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aanwezigheden.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aanwezighedens/1
  # DELETE /aanwezighedens/1.xml
  def destroy
    @aanwezigheden = Aanwezigheden.find(params[:id])
    @aanwezigheden.destroy

    respond_to do |format|
      format.html { redirect_to(aanwezighedens_url) }
      format.xml  { head :ok }
    end
  end
end
