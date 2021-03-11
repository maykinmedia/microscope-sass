# :microscope: Microscope

> Sass microframework for building scoped user interfaces.
- [Documentation](https://maykinmedia.github.io/microscope-sass/) on github pages.

Microscope is a microframework with a light footprint (0kb by default) which only applies styling to explicitly selected
elements* (by you) based on highly configurable defaults.

**0kb footprint**

Microscope only exposes functions, mixins and variables (so no default styling*). CSS is only generated if needed.

**Explicitly selected elements**

Because no default styling is present, Microscope works well in combination with existing styling or other libraries.

**Highly configurable**

Microscope contains a large amount of [settings](https://github.com/maykinmedia/microscope-sass/blob/master/_settings-sample.scss)
(with sane defaults) which configure the created CSS code. Many settings have variations and/or optional breakpoint
specific overrides which allow for more specific configurations. The settings can be specified in a settings file which
acts as a digital representation of your [style guide](https://en.wikipedia.org/wiki/Style_guide).

\* With the exception of the `wysiwyg` and `table` mixins, which applies formatting to children automatically (only if
called).

## Install

Install with [npm](https://www.npmjs.com/)

```sh
npm i microscope-sass --save
```

**Webpack**

To use Microscope with [webpack](https://webpack.js.org/), install and configure
[sass-loader](https://webpack.js.org/loaders/sass-loader/).

Webpack style import:

```scss
@import '~microscope-sass/lib/<library>';  // Import single library (recommended).
@import '~microscope-sass';                // Import everything at once.
```

**Eyeglass**

_For historic reasons, the Eyeglass import is referenced as "microscope" insead of "microscope-sass"._

Microsope supports [Eyeglass](https://www.npmjs.com/package/eyeglass) in which case it can be referenced as "microscope".

Eygeglass style import:

```scss
@import 'microscope/lib/<library>';  // Import single library (recommended).
@import 'microscope';                // Import everything at once.
```

**includePaths**

Add "node_modules/" to the `includePaths` setting of you sass environment.

```js
...
includePaths: ["node_modules/"],
...
```

includePaths style import:

```scss
@import 'microscope-sass/lib/<library>';  // Import single library (recommended).
@import 'microscope-sass';                // Import everything at once.
```

Note: Further documentations assumes a webpack installation and webpack style imports.

## Usage

**Configuration**

Adjust [settings_sample.scss](https://github.com/maykinmedia/microscope-sass/blob/master/_settings-sample.scss) based on
your needs, note that all options are optional and unnecessary options can be omitted and removed.

Save the settings file and make sure to include it as the first file in you main `.scss` entrypoint.

```scss
@import 'settings';
```

**Libraries**

Microscope exposes the following libraries, please refer to their [documentation](https://maykinmedia.github.io/microscope-sass/)
functions, mixins and variables are exposed.

- [animation](https://maykinmedia.github.io/microscope-sass/#animation)
- [browser](https://maykinmedia.github.io/microscope-sass/#browser)
- [color](https://maykinmedia.github.io/microscope-sass/#color)
- [grid](https://maykinmedia.github.io/microscope-sass/#grid)
- [responsive](https://maykinmedia.github.io/microscope-sass/#responsive)
- [transform](https://maykinmedia.github.io/microscope-sass/#transform)
- [typography](https://maykinmedia.github.io/microscope-sass/#typography)
- [util](https://maykinmedia.github.io/microscope-sass/#util)

**Importing a single library (prefered)**

In any of your (nested) .scss files, import the libraries you need. The libraries will use your
custom settings if set.

```scss
@import '~microscope-sass/lib/grid';
```

**Import everything at once**

It's also possible to import all libraries at once.

```scss
@import '~microscope-sass';
```

**Applying styles**

Microscope is designed to help styling isolated bits of HTML. The recommended use is to target class
selectors so styles are remain scoped and don't leak out to other places.

```scss
@import '~microscope-sass/lib/color';
@import '~microscope-sass/lib/typography';

.header__title {
    @include h1;
    @include color-primmary;
}
```

A special `wysiwyg` mixin is availabe (via the `typography` library to automatically apply elements
based on their tag name. It's recommended to only use this when the internal structure is unknown
(for instance when styling the output of a wysiwyg editor).


```scss
@import '~microscope-sass/lib/typography';

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

Copyright © 2021 [Maykin Media](https://www.maykinmedia.nl/)
Licensed under the MIT license.
