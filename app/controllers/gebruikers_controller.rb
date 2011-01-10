class GebruikersController < ApplicationController
  # GET /gebruikers
  # GET /gebruikers.xml
  def index
   if !session[:user_id]
		redirect_to :action=> 'login'
   else
   @gebruikers = Gebruiker.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gebruikers }
    end
  end
end
  # GET /gebruikers/1
  # GET /gebruikers/1.xml
  def show
   if !session[:user_id]
	  redirect_to :action=> 'login'
   else
    @gebruiker = Gebruiker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gebruiker }
    end
  end
end
  # GET /gebruikers/new
  # GET /gebruikers/new.xml
  def new
  	 if !session[:user_id]
		redirect_to :action=> 'login'
	 else
      @gebruiker = Gebruiker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gebruiker }
    end
  end
end
  # GET /gebruikers/1/edit
  def edit
  	 if !session[:user_id]
		redirect_to :action=> 'login'
	 else
      @gebruiker = Gebruiker.find(params[:id])
  end
 end

  # POST /gebruikers
  # POST /gebruikers.xml
  def create
   if !session[:user_id]
	redirect_to :action=> 'login'
   else
    @gebruiker = Gebruiker.new(params[:gebruiker])

    respond_to do |format|
      if @gebruiker.save
        format.html { redirect_to(@gebruiker, :notice => 'De docent is succesvol aangemaakt.') }
        format.xml  { render :xml => @gebruiker, :status => :created, :location => @gebruiker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gebruiker.errors, :status => :unprocessable_entity }
      end
    end
  end
end
  # PUT /gebruikers/1
  # PUT /gebruikers/1.xml
  def update
  if !session[:user_id]
	redirect_to :action=> 'login'
  else
    @gebruiker = Gebruiker.find(params[:id])

    respond_to do |format|
      if @gebruiker.update_attributes(params[:gebruiker])
        format.html { redirect_to(@gebruiker, :notice => 'De aanpassing was succesvol.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gebruiker.errors, :status => :unprocessable_entity }
      end
    end
  end
end
  # DELETE /gebruikers/1
  # DELETE /gebruikers/1.xml
  def destroy
   if !session[:user_id]
	redirect_to :action=> 'login'
	else
	@gebruiker = Gebruiker.find(params[:id])
    @gebruiker.destroy

    respond_to do |format|
      format.html { redirect_to(gebruikers_url) }
      format.xml  { head :ok }
    end
  end
end

def login


end


def logout
 if session[:user_id]
  reset_session
  redirect_to :action=> 'login'
end
end
 
 def authenticate
@gebruiker = Gebruiker.new(params[:userform])
valid_user = Gebruiker.find(:first,:conditions => ["voornaam = ? and wachtwoord = ?",@gebruiker.voornaam, @gebruiker.wachtwoord])

if valid_user
session[:user_id]=valid_user.voornaam
redirect_to :action => 'index'
else
flash[:notice] = "Ongeldige gebruiker en/of wachtwoord"
redirect_to :action=> 'login'
end
  end
end
