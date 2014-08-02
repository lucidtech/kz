json.array!(@user_keys) do |user_key|
  json.extract! user_key, :id, :cipher_key, :cipher_iv, :identifier, :cipher_type
  json.url user_key_url(user_key, format: :json)
end
