require 'test_helper'

class ImportantvocabsControllerTest < ActionController::TestCase
  setup do
    @importantvocab = importantvocabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:importantvocabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create importantvocab" do
    assert_difference('Importantvocab.count') do
      post :create, importantvocab: { pipisode_id: @importantvocab.pipisode_id, sentence_id: @importantvocab.sentence_id, story_id: @importantvocab.story_id, word_id: @importantvocab.word_id }
    end

    assert_redirected_to importantvocab_path(assigns(:importantvocab))
  end

  test "should show importantvocab" do
    get :show, id: @importantvocab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @importantvocab
    assert_response :success
  end

  test "should update importantvocab" do
    patch :update, id: @importantvocab, importantvocab: { pipisode_id: @importantvocab.pipisode_id, sentence_id: @importantvocab.sentence_id, story_id: @importantvocab.story_id, word_id: @importantvocab.word_id }
    assert_redirected_to importantvocab_path(assigns(:importantvocab))
  end

  test "should destroy importantvocab" do
    assert_difference('Importantvocab.count', -1) do
      delete :destroy, id: @importantvocab
    end

    assert_redirected_to importantvocabs_path
  end
end
