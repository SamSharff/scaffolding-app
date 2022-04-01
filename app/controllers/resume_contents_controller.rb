class ResumeContentsController < ApplicationController
  before_action :set_resume_content, only: %i[ show edit update destroy ]

  # GET /resume_contents or /resume_contents.json
  def index
    @resume_contents = ResumeContent.all
    render template: "resume_contents/index"
  end

  # # GET /resume_contents/1 or /resume_contents/1.json
  # def show
  # end

  # # GET /resume_contents/new
  # def new
  #   @resume_content = ResumeContent.new
  # end

  # # GET /resume_contents/1/edit
  # def edit
  # end

  # # POST /resume_contents or /resume_contents.json
  # def create
  #   @resume_content = ResumeContent.new(resume_content_params)

  #   respond_to do |format|
  #     if @resume_content.save
  #       format.html { redirect_to resume_content_url(@resume_content), notice: "Resume content was successfully created." }
  #       format.json { render :show, status: :created, location: @resume_content }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @resume_content.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /resume_contents/1 or /resume_contents/1.json
  # def update
  #   respond_to do |format|
  #     if @resume_content.update(resume_content_params)
  #       format.html { redirect_to resume_content_url(@resume_content), notice: "Resume content was successfully updated." }
  #       format.json { render :show, status: :ok, location: @resume_content }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @resume_content.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /resume_contents/1 or /resume_contents/1.json
  # def destroy
  #   @resume_content.destroy

  #   respond_to do |format|
  #     format.html { redirect_to resume_contents_url, notice: "Resume content was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_resume_content
  #     @resume_content = ResumeContent.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def resume_content_params
  #     params.require(:resume_content).permit(:title, :description, :type, :date)
  #   end
end
