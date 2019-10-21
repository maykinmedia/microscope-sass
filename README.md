# :microscope: Microscope

> Sass microframework for building scoped user interfaces.

## Install

*Make sure you have [eyeglass](https://www.npmjs.com/package/eyeglass) installed and configured.*

Install with [npm](https://www.npmjs.com/)

```sh
npm i microscope-sass --save
```

## Usage

 > TODO: More detailed documentation on concepts, libraries and settings.
 
Microscope is microframework for building scoped user interfaces, the recommended way of using it is to configure the 
basic concepts of your [style guide](https://en.wikipedia.org/wiki/Style_guide) via a settings file and to apply them to
isolated, reusable  blocks using mixins exposed by one or more libraries.
 
**Configuration**

Adjust [settings_sample.scss](https://github.com/maykinmedia/microscope-sass/blob/master/_settings-sample.scss) based on
your needs, note that all options are optional and unnecessary options can be omitted and removed. 

Save the settings file and make sure to include it as the first file in you main `.scss` entrypoint.

```scss
@import 'settings';
```

**Libraries**

Microscope exposes the following libraries, please refer the their source code to see what variables
and mixins are exposed.

- [animation](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_animation.scss)
- [browser](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_browser.scss)
- [color](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_color.scss)
- [grid](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_grid.scss)
- [responsive](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_responsive.scss)
- [transform](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_transform.scss)
- [typography](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_typography.scss)
- [util](https://github.com/maykinmedia/microscope-sass/blob/master/lib/_util.scss)

**Importing a single library (prefered)**

In any of your (nested) .scss files, import the libraries you need. The libraries will use your
custom settings if set.

```scss
@import 'microscope/grid';
```

**Importing everything at once**

It's also possible to import all libraries at once.

```scss
@import 'microscope';
```

**Applying styles**

Microscope is designed to help styling isolated bits of HTML. The recommended use is to target class
selectors so styles are remain scoped and don't leak out to other places.

```scss
@import 'microscope/color';
@import 'microscope/typography';

.header__title {
    @include color-primmary;
    @include h1;
}
```

A special `wysiwyg` mixin is availabe (via the `typography` library to automatically apply elements
based on their tag name. It's recommended to only use this when the internal structure is unknown
(for instance when styling the output of a wysiwyg editor).


```scss
@import 'microscope/typography';

.wysiwyg {
    @include wysiwyg;
}
```

## Contributing

Pull requests and stars are always welcome. For bugs and feature requests, [please create an issue](https://github.com/maykinmedia/microscope-sass/issues).

## Author

**Maykin Media**

* [maykinmedia.nl](https://www.maykinmedia.nl/)
* [github/maykinmedia](https://github.com/maykinmedia)
* [twitter/maykinmedia](http://twitter.com/maykinmedia)

## License

Copyright © 2019 [Maykin Media](https://www.maykinmedia.nl/)
Licensed under the MIT license.
