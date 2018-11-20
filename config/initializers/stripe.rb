if Rails.env == 'production'
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Uwu70hYyDOiQgrQzGS0E0kZA',
    :secret_key      => 'sk_test_gUSv1e7HKXhduZkX7XHkJb8H'
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Uwu70hYyDOiQgrQzGS0E0kZA',
    :secret_key      => 'sk_test_gUSv1e7HKXhduZkX7XHkJb8H'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
