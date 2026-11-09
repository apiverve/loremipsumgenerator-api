# Lorem Ipsum Generator API - Dart/Flutter Client

Lorem Ipsum Generator generates placeholder text by paragraph count with optional length limits and standard opening phrasing. Every response includes the dummy copy plus word and sentence counts.

[![pub package](https://img.shields.io/pub/v/apiverve_loremipsumgenerator.svg)](https://pub.dev/packages/apiverve_loremipsumgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Lorem Ipsum Generator API](https://apiverve.com/marketplace/loremipsumgenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_loremipsumgenerator: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_loremipsumgenerator/apiverve_loremipsumgenerator.dart';

void main() async {
  final client = LoremipsumgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'paragraphs': 1,
      'startwithlorem': true,
      'maxlength': 100
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Lorem Ipsum Generator API](https://apiverve.com/marketplace/loremipsumgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/loremipsumgenerator](https://docs.apiverve.com/ref/loremipsumgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
