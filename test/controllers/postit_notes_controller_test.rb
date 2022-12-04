require "test_helper"

class PostitNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postit_note = postit_notes(:one)
  end

  test "should get index" do
    get postit_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_postit_note_url
    assert_response :success
  end

  test "should create postit_note" do
    assert_difference("PostitNote.count") do
      post postit_notes_url, params: { postit_note: { note_title: @postit_note.note_title, postit_content: @postit_note.postit_content, user_id: @postit_note.user_id } }
    end

    assert_redirected_to postit_note_url(PostitNote.last)
  end

  test "should show postit_note" do
    get postit_note_url(@postit_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_postit_note_url(@postit_note)
    assert_response :success
  end

  test "should update postit_note" do
    patch postit_note_url(@postit_note), params: { postit_note: { note_title: @postit_note.note_title, postit_content: @postit_note.postit_content, user_id: @postit_note.user_id } }
    assert_redirected_to postit_note_url(@postit_note)
  end

  test "should destroy postit_note" do
    assert_difference("PostitNote.count", -1) do
      delete postit_note_url(@postit_note)
    end

    assert_redirected_to postit_notes_url
  end
end
