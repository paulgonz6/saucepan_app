json.array!(@prompts) do |prompt|
  json.extract! prompt, :id, :question, :user_id, :event, :closing_time
  json.url prompt_url(prompt, format: :json)
end
