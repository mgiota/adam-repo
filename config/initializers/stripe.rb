if Rails.env.production?
    Rails.configuration.stripe = {
      publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
      secret_key: ENV['STRIPE_SECRET_KEY']
    }
  else
    Rails.configuration.stripe = {
      publishable_key: 'pk_test_9tbb4cfkrOtP4dv1bRE45HCi',
      secret_key: 'sk_test_PageFna1JAJRTI29Nqq2yjXW'
    }
  end
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]