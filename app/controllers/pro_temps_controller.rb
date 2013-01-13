class ProTempsController < ApplicationController
  # GET /pro_temps
  # GET /pro_temps.xml
  def index
    @pro_temps = ProTemp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pro_temps }
    end
  end

  # GET /pro_temps/1
  # GET /pro_temps/1.xml
  def show
    @pro_temp = ProTemp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pro_temp }
    end
  end

  # GET /pro_temps/new
  # GET /pro_temps/new.xml
  def new
    @pro_temp = ProTemp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pro_temp }
    end
  end

  # GET /pro_temps/1/edit
  def edit
    @pro_temp = ProTemp.find(params[:id])
  end

  # POST /pro_temps
  # POST /pro_temps.xml
  def create
    @pro_temp = ProTemp.new(params[:pro_temp])

    respond_to do |format|
      if @pro_temp.save
        format.html { redirect_to(@pro_temp, :notice => 'Pro temp was successfully created.') }
        format.xml  { render :xml => @pro_temp, :status => :created, :location => @pro_temp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pro_temp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pro_temps/1
  # PUT /pro_temps/1.xml
  def update
    @pro_temp = ProTemp.find(params[:id])

    respond_to do |format|
      if @pro_temp.update_attributes(params[:pro_temp])
        format.html { redirect_to(@pro_temp, :notice => 'Pro temp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pro_temp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pro_temps/1
  # DELETE /pro_temps/1.xml
  def destroy
    @pro_temp = ProTemp.find(params[:id])
    @pro_temp.destroy

    respond_to do |format|
      format.html { redirect_to(pro_temps_url) }
      format.xml  { head :ok }
    end
  end
end
