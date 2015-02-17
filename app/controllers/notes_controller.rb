class NotesController < ApplicationController
  def index
    @notes = current_user.notes.all
    @new_note = current_user.notes.new
  end

  def create
    @note = Note.create(note_params)
  end

  private

    def note_params
      params.require(:note).permit(:title, :user_id)
    end
end
