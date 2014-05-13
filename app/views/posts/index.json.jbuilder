json.array!(@posts) do |post|
  json.extract! post, :id, :title, :url, :video_url, :image_url, :body_text, :type, :subject_reading, :subject_maths, :subject_world, :subject_english, :priority_level, :lilac, :pink, :red, :yellow, :blue, :green, :orange, :linklabel, :publishable, :order_number
  json.url post_url(post, format: :json)
end
