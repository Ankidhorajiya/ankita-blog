Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
   provider :facebook, "352376261887759", "18d49148744e6c47d38d4370606616ac", scope: 'email,first_name,last_name'
   provider :twitter, "HXB6cm6VW4kmz6BldKo5bt3CC", "Al9UtxEubKwkEcch7i1Se45N9mJWGofKp8v3zhm6Rw3X4Wm0Fe"
   provider :linkedin, "812vsz060krqsf", "IdF3IrVgLddc1j8G"
end