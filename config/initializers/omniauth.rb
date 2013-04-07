Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'wVkd7HIQ6TzjlTyupKX82g', 'i7qUneRNMR9K0cTTIDgxJfoXUo3XBLClnqRIed30XM'
  #prod
  provider :facebook, '180431175439854', 'bd2d37c3071e15ffdc61d3ab19d6e763'
  #dev
  #provider :facebook, '510503195684018', '159fcbaa5c258815d2e7d47ee5ef98cf'
end