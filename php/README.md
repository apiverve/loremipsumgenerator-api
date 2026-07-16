# Lorem Ipsum Generator API - PHP Package

Lorem Ipsum Generator is a simple tool for generating lorem ipsum text. It returns the generated text.

## Installation

Install via Composer:

```bash
composer require apiverve/loremipsumgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Loremipsumgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'paragraphs' => 1,
    'startwithlorem' => true,
    'maxlength' => 100
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Loremipsumgenerator\Client;
use APIVerve\Loremipsumgenerator\Exceptions\APIException;
use APIVerve\Loremipsumgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['paragraphs' => 1, 'startwithlorem' => true, 'maxlength' => 100]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/loremipsumgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/loremipsumgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/loremipsumgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
