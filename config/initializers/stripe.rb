if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_H0QiymD0DxoKSBwnaCUMwbx2',
    secret_key: 'sk_test_GL6UisPECVAUNP3GTsGxngNQ'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]