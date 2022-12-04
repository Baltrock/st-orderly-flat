class PostitNotesController < ApplicationController
  before_action :set_postit_note, only: %i[ show edit update destroy ]

  # GET /postit_notes or /postit_notes.json
  def index
    @postit_notes = PostitNote.all
  end

  # GET /postit_notes/1 or /postit_notes/1.json
  def show
  end

  # GET /postit_notes/new
  def new
    @postit_note = PostitNote.new
  end

  # GET /postit_notes/1/edit
  def edit
  end

  # POST /postit_notes or /postit_notes.json
  def create
    @postit_note = PostitNote.new(postit_note_params)

    respond_to do |format|
      if @postit_note.save
        format.html { redirect_to postit_note_url(@postit_note), notice: "Postit note was successfully created." }
        format.json { render :show, status: :created, location: @postit_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postit_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postit_notes/1 or /postit_notes/1.json
  def update
    respond_to do |format|
      if @postit_note.update(postit_note_params)
        format.html { redirect_to postit_note_url(@postit_note), notice: "Postit note was successfully updated." }
        format.json { render :show, status: :ok, location: @postit_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postit_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postit_notes/1 or /postit_notes/1.json
  def destroy
    @postit_note.destroy

    respond_to do |format|
      format.html { redirect_to postit_notes_url, notice: "Postit note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postit_note
      @postit_note = PostitNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postit_note_params
      params.require(:postit_note).permit(:note_title, :postit_content, :user_id)
    end
end
