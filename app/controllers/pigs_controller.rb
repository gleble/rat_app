class PigsController < ApplicationController
  # GET /pigs
  # GET /pigs.xml
  def index
    @pigs = Pig.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pigs }
    end
  end

  # GET /pigs/1
  # GET /pigs/1.xml
  def show
    @pig = Pig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pig }
    end
  end

  # GET /pigs/new
  # GET /pigs/new.xml
  def new
    @pig = Pig.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pig }
    end
  end

  # GET /pigs/1/edit
  def edit
    @pig = Pig.find(params[:id])
  end

  # POST /pigs
  # POST /pigs.xml
  def create
    @pig = Pig.new(params[:pig])

    respond_to do |format|
      if @pig.save
        format.html { redirect_to(@pig, :notice => 'Pig was successfully created.') }
        format.xml  { render :xml => @pig, :status => :created, :location => @pig }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pigs/1
  # PUT /pigs/1.xml
  def update
    @pig = Pig.find(params[:id])

    respond_to do |format|
      if @pig.update_attributes(params[:pig])
        format.html { redirect_to(@pig, :notice => 'Pig was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pigs/1
  # DELETE /pigs/1.xml
  def destroy
    @pig = Pig.find(params[:id])
    @pig.destroy

    respond_to do |format|
      format.html { redirect_to(pigs_url) }
      format.xml  { head :ok }
    end
  end
end
