# Smooth Widgets

Smooth Widgets is a collection of custom widgets for Flutter, designed to help you build beautiful and responsive user interfaces quickly and easily.

## Features

This package currently includes the following widgets:

- `SmoothTextButton:` A customizable button widget with smooth animations and multiple styles.

---

## Widgets Included

### 1. SmoothTextButton

<!-- ![SmoothTextButton](add_image_url_here) -->

The `SmoothTextButton` widget is a customizable button with a smooth border radius and various properties. It's highly configurable, enabling the creation of stylish buttons that seamlessly blend into different UI designs.

#### Example Use Case:

```dart
SmoothTextButton(
  title: 'Click Me',
  isLoading: false,
  backgroundColor: Colors.blue,
  isActive: true,
  onPressed: () {
    // Action to perform on button press
  },
)
```

#### Parameters:

- `title`: The text displayed on the button.
- `isLoading`: A boolean to indicate if the button is in a loading state.
- `backgroundColor`: The background color of the button.
- `isActive`: A boolean to control the button's active state.
- `onPressed`: The callback function executed when the button is pressed.

### 2. SmoothIconButton

<!-- ![SmoothIconButton](add_image_url_here) -->

The `SmoothIconButton` widget is an icon button with a smooth border and a backdrop filter. It offers an elegant design suitable for various icon-based interactions within your app.

#### Example Use Case:

```dart
SmoothIconButton(
  icon: Icons.add,
  onPressed: () {
    // Action to perform on icon button press
  },
)
```

#### Parameters:

- `icon`: The icon displayed within the button.
- `onPressed`: The callback function executed when the icon button is pressed.

### 3. SmoothModal

<!-- ![SmoothModal](add_image_url_here) -->

The `SmoothModal` widget presents a modal bottom sheet with a smooth design and blur effect, providing a sophisticated user experience for displaying additional content or actions.

#### Example Use Case:

```dart
void _showModal(BuildContext context) {
  smoothModal(
    YourCustomWidget(),
    context,
    willPopScope: true,
  );
}
```

#### Parameters:

- `child`: The widget displayed within the modal.
- `context`: The current build context.
- `willPopScope`: A boolean to enable or disable the modal's dismissal on back button press.

### 4. SmoothTextField

<!-- ![SmoothTextField](add_image_url_here) -->

The `SmoothTextField` widget offers a sleek text input field with smooth styling and customizable features, enhancing the user's input experience.

#### Example Use Case:

```dart
SmoothTextField(
  hintText: 'Enter your text',
  // Other parameters...
)
```

#### Parameters:

- `hintText`: The hint text displayed when the field is empty.
- `suffixIcon`: The icon displayed at the end of the text field.
- `prefixIcon`: The icon displayed at the beginning of the text field.
- ... (Other parameters)


    
## Contributing

This package is open-source and contributions are always welcome! If you find a bug or have a feature request, please file an issue on GitHub.

If you would like to contribute code to this project, please fork the repository and submit a pull request.

## License

This package is released under the MIT License. See LICENSE file for details.

