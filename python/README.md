Lorem Ipsum Generator API
============

Lorem Ipsum Generator generates placeholder text by paragraph count with optional length limits and standard opening phrasing. Every response includes the dummy copy plus word and sentence counts.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-loremipsumgenerator.svg)](https://pypi.org/project/apiverve-loremipsumgenerator/)

This is a Python wrapper for the [Lorem Ipsum Generator API](https://apiverve.com/marketplace/loremipsumgenerator?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-loremipsumgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-loremipsumgenerator
```

---

## Configuration

Before using the Lorem Ipsum Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient

# Initialize the client with your APIVerve API key
api = LoremipsumgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Lorem Ipsum Generator API documentation is found here: [https://docs.apiverve.com/ref/loremipsumgenerator](https://docs.apiverve.com/ref/loremipsumgenerator?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient

# Initialize the client with your APIVerve API key
api = LoremipsumgeneratorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `LoremipsumgeneratorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient, LoremipsumgeneratorAPIClientError

api = LoremipsumgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except LoremipsumgeneratorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient, LoremipsumgeneratorAPIClientError

api = LoremipsumgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except LoremipsumgeneratorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient, LoremipsumgeneratorAPIClientError

query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}

# Using context manager ensures proper cleanup
with LoremipsumgeneratorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except LoremipsumgeneratorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient

# Enable debug mode
api = LoremipsumgeneratorAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_loremipsumgenerator.apiClient import LoremipsumgeneratorAPIClient

api = LoremipsumgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "paragraphs": 1,
    "startwithlorem": true,
    "maxlength": 100
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
