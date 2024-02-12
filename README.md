# jitsu_client

A crystal lang wrapper over the Jitsu API

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     jitsu_client:
       github: hostari/jitsu_client
   ```

2. Run `shards install`

## Usage

```crystal
require "jitsu_client"
```

```crystal
client = Jitsu::Client.new
client.set_host("https://jitsu.mycompany.com")
client.set_token("my_auth_token_from_jitsu")

Jitsu::Event.create({ data: { my_data: 1 } }.to_json, client: client)
```

## Contributing

1. Fork it (<https://github.com/hostari/jitsu_client/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Xavi Ablaza](https://github.com/xaviablaza) - creator and maintainer
