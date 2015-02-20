json.array!(@responses) do |response|
  json.extract! response, :id, :content, :prompt_id, :responder_id
  json.url response_url(response, format: :json)
end
