json.array!(@sessions) do |session|
  json.extract! session, :account_username, :child_name, :has_completed, :start, :end, :session_identifier, :session_name, :session_id, :session_number, :session_type, :scenes, :phoneme_ids, :target_phoneme_id, :word_ids, :target_word_id, :keyword_ids, :target_keyword_id
  json.url session_url(session, format: :json)
end
