class ExamScoresController < ApplicationController
  # GET /exam_scores
  # GET /exam_scores.json
  def index
    @exam_scores = ExamScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exam_scores }
    end
  end

  # GET /exam_scores/1
  # GET /exam_scores/1.json
  def show
    @exam_score = ExamScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam_score }
    end
  end

  # GET /exam_scores/new
  # GET /exam_scores/new.json
  def new
    @exam_score = ExamScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam_score }
    end
  end

  # GET /exam_scores/1/edit
  def edit
    @exam_score = ExamScore.find(params[:id])
  end

  # POST /exam_scores
  # POST /exam_scores.json
  def create
    @exam_score = ExamScore.new(params[:exam_score])

    respond_to do |format|
      if @exam_score.save
        format.html { redirect_to @exam_score, notice: 'Exam score was successfully created.' }
        format.json { render json: @exam_score, status: :created, location: @exam_score }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exam_scores/1
  # PUT /exam_scores/1.json
  def update
    @exam_score = ExamScore.find(params[:id])

    respond_to do |format|
      if @exam_score.update_attributes(params[:exam_score])
        format.html { redirect_to @exam_score, notice: 'Exam score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_scores/1
  # DELETE /exam_scores/1.json
  def destroy
    @exam_score = ExamScore.find(params[:id])
    @exam_score.destroy

    respond_to do |format|
      format.html { redirect_to exam_scores_url }
      format.json { head :no_content }
    end
  end
end
