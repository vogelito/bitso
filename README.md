# Bitso Ruby API

Feel free to fork, modify & redistribute under the MIT license.

## Installation

Add this line to your application's Gemfile:

    gem 'bitso'

## Create API Key

More info at: [https://bitso.com/api_info](https://bitso.com/api_info)
    
## Setup

```ruby
Bitso.setup do |config|
  config.key = YOUR_API_KEY
  config.secret = YOUR_API_SECRET
  config.client_id = YOUR_BITSO_USERNAME
end
```

If you fail to set your `key` or `secret` or `client_id` a `MissingConfigExeception`
will be raised.

## Fetch your open order

Returns an array with your open orders.

```ruby
Bitso.orders.all
```

## Create a sell order

Returns an `Order` object.

```ruby
Bitso.orders.sell(amount: 1.0, price: 111)
```

## Create a buy order

Returns an `Order` object.

```ruby
Bitso.orders.buy(amount: 1.0, price: 111)
```

## Fetch your transactions

Returns an `Array` of `UserTransaction`.

```ruby
Bitso.user_transactions.all
```

*To be continued!**

# Tests

If you'd like to run the tests you need to set the following environment variables:

```
export BITSO_KEY=xxx
export BITSO_SECRET=yyy
export BITSO_CLIENT_ID=zzz
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b
my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


