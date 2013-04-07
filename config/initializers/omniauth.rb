Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'jIKyZpHOanWKwHdmsbEpMg', 'uthhy3pp1x3NgVHOg2FOCHgqHZ5vXGZerkx9RKv60'
  #prod
  provider :facebook, '281302611962006', '7fc5253af45d9ceb5080de0d653b078e'
  #dev
  #provider :facebook, '321611241245975', '9b4c2a4d642de49ea1c3debb45649d19'
end