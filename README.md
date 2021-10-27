<h1 align="center">Library Widgets</h1>

<p align="center">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter"
      alt="Platform" />
  </a>
  <a href="">
    <img src="https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal"
      alt="Donate" />
  </a>
</p><br>


# Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  library_widgets: ^0.0.1
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```
$ pub get
```

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'import 'package:library_widgets/library_widgets.dart';';
```

# Usage

`LibraryWidgets`:

```dart
 LibraryWidgets.outdoorLetters(
              value: 'Dev Leonardo Serrano Flutter',
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              textStyle: Theme.of(context).textTheme.bodyText1,
            ),
            
```
![ezgif com-gif-maker-2](https://user-images.githubusercontent.com/62712813/138738162-ca9121c5-8670-4d83-a4c2-d1cded4eded8.gif)
--------------------------------------------------------------------------------------

```dart
LibraryWidgets.autoCompletFade(
              keys: [
                'teste',
                'teste teste',
                'Teste agua',
                'Teste super',
                'teste almeida',
                'experiente',
                'experiente fluxo',
                'Porto',
                'Porto pedra',
                'Porto Pedra',
                'Porto Pedra Pereira Agua',
                'Preenchimento automatico de texto com fade como principal função'
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              controller: myController,
              textStyle: Theme.of(context).textTheme.bodyText1,
            ),
```
![ezgif com-gif-maker-3](https://user-images.githubusercontent.com/62712813/138738221-e54d1434-bf35-46c2-9a93-364488f7cf53.gif)
--------------------------------------------------------------------------------------
```dart
 LibraryWidgets.flowButtons(
            iconMenu: const Icon(Icons.menu),
            animationPosition: AnimationPosition.left,
            menuItems: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.safety_divider)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.ac_unit_sharp)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.dangerous_rounded)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata_outlined)),
            ],
          ),
```
![ezgif com-gif-maker](https://user-images.githubusercontent.com/62712813/139139993-bb73b390-206d-45be-ae9f-7e0113a623ff.gif)
--------------------------------------------------------------------------------------
```dart
 LibraryWidgets.cardMessage(
                body: const Text('Hey my friend'),
                backgroundColor: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
                positionHorizontalTriangle: PositionHorizontalTriangle.right,
                positionVerticalTriangle: PositionVerticalTriangle.top,
                circleAvatar: const CircleAvatar(
                  maxRadius: 16,
                  child: FlutterLogo(),
                ),
              ),
```
<img width="469" alt="Captura de Tela 2021-10-26 às 22 12 04" src="https://user-images.githubusercontent.com/62712813/139140171-d048bff2-3299-457a-a782-f1e88fd5fb4d.png">



# Bugs or Requests

If you encounter any problems feel free to open an [issue](https://github.com/DevLSerrano/library_widgets/issues). If you feel the library is missing a feature, please raise a [ticket](https://github.com/DevLSerrano/library_widgets/pulls) on GitHub and I'll look into it. Pull request are also welcome.

# Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/DevLSerrano"><img src="https://avatars.githubusercontent.com/u/62712813?v=4" width="100px;" alt=""/><br /><sub><b>Leonardo Serrano</b></sub></a><br /><a href="" title="Creator"></a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
 
