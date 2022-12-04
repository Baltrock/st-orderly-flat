json.extract! postit_note, :id, :note_title, :postit_content, :user_id, :created_at, :updated_at
json.url postit_note_url(postit_note, format: :json)
