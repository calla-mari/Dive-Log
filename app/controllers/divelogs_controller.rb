class DivelogsController < OpenReadController
  before_action :set_divelog, only: %i[update destroy]

  # GET /divelogs
  def index
    @divelogs = Divelog.all

    render json: @divelogs
  end

  # GET /divelogs/1
  def show
    render json: Divelog.find(params[:id])
  end

  # POST /divelogs
  def create
    puts divelog_params
    @divelog = current_user.divelogs.build(divelog_params)

    if @divelog.save
      render json: @divelog, status: :created
    else
      render json: @divelog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /divelogs/1
  def update
    if @divelog.update(divelog_params)
      render json: @divelog
    else
      render json: @divelog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /divelogs/1
  def destroy
    @divelog.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_divelog
    @divelog = current_user.divelogs.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def divelog_params
    params.require(:divelog).permit(:city, :country, :site, :date, :time)
  end

  private :set_divelog, :divelog_params
end
