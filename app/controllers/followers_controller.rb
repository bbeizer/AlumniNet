class FollowersController < ApplicationController
  skip_before_action :verify_authenticity_token  

  # GET /followers or /followers.json
  def index
    @followers = Follower.all
  end

  # GET /followers/1 or /followers/1.json
  def show
    @followers = Follower.all
  end

  # GET /followers/new
  def new
    @follower = Follower.new
  end

  # GET /followers/1/edit
  def edit
  end

  # POST /followers or /followers.json
  def create
    otherusername = params[:otheruser]
    username = params[:thisuser]
    @follow = Follower.new(from:username, to:otherusername)
    if @follow.save()
      redirect_to '/followers'
    end
  end

  # PATCH/PUT /followers/1 or /followers/1.json
  def update
    respond_to do |format|
      if @follower.update(follower_params)
        format.html { redirect_to @follower, notice: "Follower was successfully updated." }
        format.json { render :show, status: :ok, location: @follower }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followers/1 or /followers/1.json
  def destroy
    @follower.destroy
    respond_to do |format|
      format.html { redirect_to followers_url, notice: "Follower was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follower
      @follower = Follower.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def follower_params
      params.require(:follower).permit(:from, :to)
    end
end
