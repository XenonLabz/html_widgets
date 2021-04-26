# html_widgets

<!-- Description of our package -->

## Text Widgets

### h1

If you want to use larger text with bold font weight, you can prefer to use `h1()`

```dart
...
h1(
    text: "This is an h1 widget",
    ...
)
...
```

There are several properties you can pass to customize the `heading widgets` and `paragraph widget`

| Properties | Work                                                                                                                                                 | Default Value                    | Values                                               |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- | ---------------------------------------------------- |
| color      | Sets the color of the text                                                                                                                           | black                            | Color                                                |
| bgColor    | Sets the background color                                                                                                                            | null                             | Color                                                |
| margin     | Gives margin around the text container                                                                                                               | null                             | num                                                  |
| padding    | Gives padding for the container holding the text                                                                                                     | null                             | num                                                  |
| fontSize   | Changes the font size of the heading and P widget                                                                                                    | Respective to the heading widget | num                                                  |
| fontWeight | Changes the font weight of the heading and P widget                                                                                                  | Respective to the heading widget | 100, 200, 300, 400, 500, 600, 700, 800, 900          |
| isLoading  | If you're loading something and want to show the text after the process you can set it to true. It will show a shimmer effect until it sets to false | false                            | bool                                                 |
| textAlign  | Align your text with respect to the container holding it                                                                                             | 'left'                           | 'center', 'left', 'right', 'start', 'end', 'justify' |
| onClick    | A function needs to be executed on taping                                                                                                            | null                             | Function                                             |
