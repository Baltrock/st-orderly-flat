require "application_system_test_case"

class PostitNotesTest < ApplicationSystemTestCase
  setup do
    @postit_note = postit_notes(:one)
  end

  test "visiting the index" do
    visit postit_notes_url
    assert_selector "h1", text: "Postit notes"
  end

  test "should create postit note" do
    visit postit_notes_url
    click_on "New postit note"

    fill_in "Note title", with: @postit_note.note_title
    fill_in "Postit content", with: @postit_note.postit_content
    fill_in "User", with: @postit_note.user_id
    click_on "Create Postit note"

    assert_text "Postit note was successfully created"
    click_on "Back"
  end

  test "should update Postit note" do
    visit postit_note_url(@postit_note)
    click_on "Edit this postit note", match: :first

    fill_in "Note title", with: @postit_note.note_title
    fill_in "Postit content", with: @postit_note.postit_content
    fill_in "User", with: @postit_note.user_id
    click_on "Update Postit note"

    assert_text "Postit note was successfully updated"
    click_on "Back"
  end

  test "should destroy Postit note" do
    visit postit_note_url(@postit_note)
    click_on "Destroy this postit note", match: :first

    assert_text "Postit note was successfully destroyed"
  end
end
