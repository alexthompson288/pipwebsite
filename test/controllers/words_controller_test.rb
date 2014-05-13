require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  setup do
    @word = words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word" do
    assert_difference('Word.count') do
      post :create, word: { ccvc: @word.ccvc, completed: @word.completed, cvc: @word.cvc, cvcc: @word.cvcc, diagraph: @word.diagraph, dummyorderedphonemes: @word.dummyorderedphonemes, entrypoint_session: @word.entrypoint_session, entrypointmodule: @word.entrypointmodule, entrypointunit: @word.entrypointunit, frenchword: @word.frenchword, germanword: @word.germanword, highfrequencyword: @word.highfrequencyword, image: @word.image, imagepossible: @word.imagepossible, imagerequired: @word.imagerequired, mandarinword: @word.mandarinword, nonsense: @word.nonsense, numletters: @word.numletters, numphonemes: @word.numphonemes, numsyllables: @word.numsyllables, ordered_phonemes: @word.ordered_phonemes, spanishword: @word.spanishword, splitdiagraph: @word.splitdiagraph, startingletter: @word.startingletter, tricky: @word.tricky, word: @word.word }
    end

    assert_redirected_to word_path(assigns(:word))
  end

  test "should show word" do
    get :show, id: @word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word
    assert_response :success
  end

  test "should update word" do
    patch :update, id: @word, word: { ccvc: @word.ccvc, completed: @word.completed, cvc: @word.cvc, cvcc: @word.cvcc, diagraph: @word.diagraph, dummyorderedphonemes: @word.dummyorderedphonemes, entrypoint_session: @word.entrypoint_session, entrypointmodule: @word.entrypointmodule, entrypointunit: @word.entrypointunit, frenchword: @word.frenchword, germanword: @word.germanword, highfrequencyword: @word.highfrequencyword, image: @word.image, imagepossible: @word.imagepossible, imagerequired: @word.imagerequired, mandarinword: @word.mandarinword, nonsense: @word.nonsense, numletters: @word.numletters, numphonemes: @word.numphonemes, numsyllables: @word.numsyllables, ordered_phonemes: @word.ordered_phonemes, spanishword: @word.spanishword, splitdiagraph: @word.splitdiagraph, startingletter: @word.startingletter, tricky: @word.tricky, word: @word.word }
    assert_redirected_to word_path(assigns(:word))
  end

  test "should destroy word" do
    assert_difference('Word.count', -1) do
      delete :destroy, id: @word
    end

    assert_redirected_to words_path
  end
end
