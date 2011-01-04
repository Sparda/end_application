class StudentensController < ApplicationController
  # GET /studentens
  # GET /studentens.xml
  def index
    @studentens = Studenten.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @studentens }
    end
  end

  # GET /studentens/1
  # GET /studentens/1.xml
  def show
    @studenten = Studenten.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @studenten }
    end
  end

  # GET /studentens/new
  # GET /studentens/new.xml
  def new
    @studenten = Studenten.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @studenten }
    end
  end

  # GET /studentens/1/edit
  def edit
    @studenten = Studenten.find(params[:id])
  end

  # POST /studentens
  # POST /studentens.xml
  def create
    @studenten = Studenten.new(params[:studenten])

    respond_to do |format|
      if @studenten.save
        format.html { redirect_to(@studenten, :notice => 'Studenten was successfully created.') }
        format.xml  { render :xml => @studenten, :status => :created, :location => @studenten }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @studenten.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /studentens/1
  # PUT /studentens/1.xml
  def update
    @studenten = Studenten.find(params[:id])

    respond_to do |format|
      if @studenten.update_attributes(params[:studenten])
        format.html { redirect_to(@studenten, :notice => 'Studenten was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @studenten.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /studentens/1
  # DELETE /studentens/1.xml
  def destroy
    @studenten = Studenten.find(params[:id])
    @studenten.destroy

    respond_to do |format|
      format.html { redirect_to(studentens_url) }
      format.xml  { head :ok }
    end
  end
end
