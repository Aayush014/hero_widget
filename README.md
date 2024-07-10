# Hero Animation in Flutter

This repository contains a Flutter project demonstrating the use of the Hero widget to create smooth, visually appealing animations when transitioning between screens.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Hero Widget in Detail](#hero-widget-in-detail)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Hero animations in Flutter allow for beautiful and smooth transitions between different screens. This project showcases how to use the Hero widget to create such animations.

## Features

- Demonstrates the use of Hero widget for smooth transitions
- Clean and modular code structure
- Easy to understand and extend

## Installation

To run this project, ensure you have Flutter installed on your machine. Then clone this repository and run the following commands:

```bash
flutter pub get
flutter run
```

## Usage

You can explore the project by navigating through the screens and observing the animations created using the Hero widget.

## Hero Widget in Detail

The Hero widget in Flutter is a powerful tool for creating smooth, visually appealing animations when navigating between screens. It works by pairing two widgets—one on the source route and one on the destination route—using a common `tag`.

### Basic Usage

Here's a basic example of how to use the Hero widget:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage()));
          },
          child: Hero(
            tag: 'hero-tag',
            child: Icon(Icons.star, size: 50),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Icon(Icons.star, size: 200),
        ),
      ),
    );
  }
}

```

## Screenshots

<details> 
  <summary><h2>📸Photos</h2></summary>
  <p>
    <table align="center">
  <tr>
    <td><img src="https://github.com/Aayush014/hero_widget/assets/133498952/15e8e474-ba7c-48dc-8517-1036385f1cab" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/Aayush014/hero_widget/assets/133498952/26f7280a-1cf2-49a3-83f8-7680ad05bae6" alt="Image 2" width="180" height="auto"></td>
  </tr>
    </table>    
  </p>
  </details>
  <details> 
  <summary><h2>📽️Video</h2></summary>
  <p>
    <table align="center">
  <tr>
    <video src ="https://github.com/Aayush014/hero_widget/assets/133498952/cdf7348a-b9f5-4b42-84eb-2b52b6c1e1a2"></video> </h1>
  </tr>
    </table>   
  </p>
  </details>

### Explanation

1. **Tag Matching**: The `Hero` widgets in the source and destination routes must share the same `tag`. This tag is used to link the two widgets together and animate the transition between them.
  
2. **Navigator**: Use the `Navigator` to push the new route (screen) where the destination Hero widget is located. The animation will transition smoothly between the two Hero widgets.

3. **Visual Continuity**: The Hero widget ensures that the transition appears smooth and seamless by animating the size, position, and shape of the widgets between the source and destination routes.

### Advanced Usage

For more complex animations, you can customize the Hero animations by using the `HeroController` and `HeroControllerScope`.

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any improvements or new features.

## License

This project is licensed under the MIT License.
