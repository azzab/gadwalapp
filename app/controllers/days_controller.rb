class DaysController < ApplicationController
  # GET /days
  # GET /days.json
  before_filter :get_user
  def get_user
       @user = User.find(current_user.id)
  end
  def index
     #@days = @user.days.all
      @days = @user.days.paginate(:page => params[:page], :per_page =>7)

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @days }
      end
  end

  # GET /days/1
  # GET /days/1.json
  def show
    @day = @user.days.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @day }
    end
  end

  # GET /days/new
  # GET /days/new.json
  def new
    @day = @user.days.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day }
    end
  end

  # GET /days/1/edit
  def edit
    @day = @user.days.find(params[:id])
  end

  # POST /days
  # POST /days.json
  def create
    @day = @user.days.new(params[:day])

    respond_to do |format|
      if @day.save
        format.html { redirect_to user_days_path(@user), notice: 'Day Awrad was successfully saved.' }
        format.json { render json: @day, status: :created, location: @day }
      else
        format.html { render action: "new" }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /days/1
  # PUT /days/1.json
  def update
    @day = @user.days.find(params[:id])

    respond_to do |format|
      if @day.update_attributes(params[:day])
        format.html { redirect_to user_days_path(@user), notice: 'Day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day = @user.days.find(params[:id])
    @day.destroy

    respond_to do |format|
      format.html { redirect_to user_days_path(@user) }
      format.json { head :no_content }
    end
  end
end
