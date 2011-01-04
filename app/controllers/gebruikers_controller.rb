class GebruikersController < ApplicationController
  # GET /gebruikers
  # GET /gebruikers.xml
  def index
    @gebruikers = Gebruiker.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gebruikers }
    end
  end

  # GET /gebruikers/1
  # GET /gebruikers/1.xml
  def show
    @gebruiker = Gebruiker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gebruiker }
    end
  end

  # GET /gebruikers/new
  # GET /gebruikers/new.xml
  def new
    @gebruiker = Gebruiker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gebruiker }
    end
  end

  # GET /gebruikers/1/edit
  def edit
    @gebruiker = Gebruiker.find(params[:id])
  end

  # POST /gebruikers
  # POST /gebruikers.xml
  def create
    @gebruiker = Gebruiker.new(params[:gebruiker])

    respond_to do |format|
      if @gebruiker.save
        format.html { redirect_to(@gebruiker, :notice => 'Gebruiker was successfully created.') }
        format.xml  { render :xml => @gebruiker, :status => :created, :location => @gebruiker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gebruiker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gebruikers/1
  # PUT /gebruikers/1.xml
  def update
    @gebruiker = Gebruiker.find(params[:id])

    respond_to do |format|
      if @gebruiker.update_attributes(params[:gebruiker])
        format.html { redirect_to(@gebruiker, :notice => 'Gebruiker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gebruiker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gebruikers/1
  # DELETE /gebruikers/1.xml
  def destroy
    @gebruiker = Gebruiker.find(params[:id])
    @gebruiker.destroy

    respond_to do |format|
      format.html { redirect_to(gebruikers_url) }
      format.xml  { head :ok }
    end
  end
end
