# Lorem Ipsum Generator API - Ruby Gem

Lorem Ipsum Generator generates placeholder text by paragraph count with optional length limits and standard opening phrasing. Every response includes the dummy copy plus word and sentence counts.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_loremipsumgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_loremipsumgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_loremipsumgenerator'

# Initialize the client
client = APIVerve::Loremipsumgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  paragraphs: 1,
  startwithlorem: true,
  maxlength: 100
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ paragraphs: 1, startwithlorem: true, maxlength: 100 })
  puts response["data"]
rescue APIVerve::Loremipsumgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Loremipsumgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Loremipsumgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "words": 73,
    "sentences": 7,
    "text": "Lorem ipsum dolor sit amet aliquip duis veniam dolore ea eu ex ad occaecat in sunt amet sit non esse. Proident fugiat eu nisi et duis excepteur. Aute ipsum pariatur labore do pariatur exercitation excepteur qui exercitation aliquip ut mollit. Reprehenderit ipsum velit eiusmod duis nulla. Id eu aute mollit cillum dolore adipisicing non occaecat. Laboris commodo magna occaecat officia amet sunt aliqua et enim enim incididunt in. Magna laborum irure nulla ea."
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/loremipsumgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/loremipsumgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/loremipsumgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
