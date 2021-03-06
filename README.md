# html_widgets

A Flutter Widget Approach for using HTML tags & CSS styles in your upcoming Apps.

## Text Widgets

### *text property is required for all the text widgets.

# h1


```dart
...
h1(
    text: "This is an h1 widget",
    ...
)
...
```

#
# h2


```dart
...
h2(
    text: "This is an h1 widget",
    color:Colors.red,
    ...
)
...
```


#
# h3


```dart
...
h3(
    text: "This is an h3 widget",
    margin:20,
    ...
)
...
```




#
# h4


```dart
...
h4(
    text: "This is an h4 widget",
    ...
)
...
```

#
# h5


```dart
...
h5(
    text: "This is an h5 widget",
    ...
)
...
```

#
# h6


```dart
...
h6(
    text: "This is an h6 widget",
    ...
)
...
```

#
# P



```dart
...
P(
    text: "This is an h6 widget",
    ...
)
...
```

There are several properties you can pass to customize the `heading widgets` and `paragraph widget`

## api reference

| Properties | Work                                                                                                                                                 | Default Value                    | Values                                               |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- | ---------------------------------------------------- |
| color      | Sets the color of the text                                                                                                                           | black                            | Color                                                |
| bgColor    | Sets the background color                                                                                                                            | null                             | Color                                                |
| margin     | Gives margin around the text container                                                                                                               | null                             | num                                                  |
| padding    | Gives padding for the container holding the text                                                                                                     | null                             | num                                                  |
| fontSize   | Changes the font size of the heading and P widget                                                                                                    | according to the widget | num                                                  |
| fontWeight | Changes the font weight of the heading and P widget                                                                                                  | according to the widget 700 for headings, 400 for P | 100, 200, 300, 400, 500, 600, 700, 800, 900          |
| isLoading  | If you're loading something and want to show the text after the process you can set it to true. It will show a shimmer effect until it sets to false | false                            | bool                                                 |
| textAlign  | Align your text with respect to the container holding it                                                                                             | 'left'                           | 'center', 'left', 'right', 'start', 'end', 'justify' |
| onClick    | A function needs to be executed on taping                                                                                                            | null                             | Function  

#
# HTMLTABLE

If you want to use larger text with bold font weight, you can prefer to use `HTMLTABLE()`

```dart
...
HTMLTable(
    columns: [
            {'id': "name", 'label': 'Name'},
            {'id': "pos", 'label': 'Position'},
            {'id': "hours", 'label': 'Hours'},
            {'id': "salary", 'label': 'Salary'},
             ],

    rows: [
            {
                'name': "Willamson",
                'pos': "Manager",
                'hours': "10",
                'salary': "100k"
            },
            {
                'name': "Willamson",
                'pos': "Manager",
                'hours': "10",
                'salary': "100k"
            },
              
              ],
            ),
...
```

Both the `rows` and `columns` property are required

## api reference

| Properties | Work                                                                                                                                                 | Default Value                    | Values                                               |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- | ---------------------------------------------------- |
| column     | the column of the table                                                                                                                        | null                            | Array of Map Which Shoud Contains id and label                                                |
| rows   | THe rows of the table                                                                                                                            | null                             | Array of map which contains all the columns id.                                               |

#
# HtmlImage

If you want to use larger text with bold font weight, you can prefer to use `HtmlImage()`

```dart
...
   HtmlImage(
            src:"https://images.pexels.com/photos/3055008/pexels-photo-3055008.jpeg",
            onClick: () {
                print("Image Clicked !!");
            },
            size: "cover",
            margin: 10,
  ),
...
```

With `HtmlImage` you can use both the network and assert images in the same widget.

*the src property is required

## api reference

| Properties | Work                                                                                                                                                 | Default Value                    | Values                                               |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- | ---------------------------------------------------- |
|src     | The source of the image                                                                                                                         | null                          | String                                              |
| width    | Width of the image                                                                                                                            | default image width                             | double                                                |
| height     |Height of the image                                                                                                               | default image height                             | double                                                  |
| margin   | Gives margin for the container holding the image                                                                                                   | 0.0                            | double                                                  |
| size   | Changes the  size of the image                                                                                                    | 'contain' |  'contain',  'cover', 'fill', 'fitHeight', 'fitWidth', 'none', 'scaleDown'                                                |
| onClick    | A function needs to be executed on taping                                                                                                            | null                             | Function  
