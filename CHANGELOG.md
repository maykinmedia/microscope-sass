# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.4] - 2021-04-23
### Changed
- Grid: Floor `$columns` in `omega-nth` mixin to prevent issues when nth-child() calculation results in floating number.

## [1.0.3] - 2021-03-30
### Changed
- Animation: Fix incorrect default value for various argument in various mixins.
- Grid: Fix mixin clash with `omega-smart` mixin causing various issues with various mixins.
- Transform: Fix wrong variable name in `aspect-ratio` mixing causing it to break a build.

## [1.0.2] - 2021-03-19
### Changed
- Grid: Fix missing semicolon causing issues on dart-sass.

## [1.0.1] - 2021-03-17
### Changed
- Animation: Fix incorrect default value for `$properties` argument in `animate` mixin.

## [1.0.0] - 2021-03-12
### Added
- Project: documentation for all functions/mixins, available at https://maykinmedia.github.io/microscope-sass/.
- Util: `strip-unit` function.

### Changed
- Project: multiple mixins keyword(s) containing "property" are renamed as plural (e.g. `$property` -> `$properties`).
- Project: most mixins now support one or multiple properties when applicable.
- Util/transform: `aspect-ratio` mixin is moved to transform library.
- Util/transform: `shadow` mixin is moved to transform library.
- Util/transform: `$util-shadow-default-color` variable is renamed to `$transform-shadow-default-color`.
- Util/transform: `$util-shadow-default-offset-x` variable is renamed to `$transform-shadow-default-offset-x`.
- Util/transform: `$util-shadow-default-offset-y` variable is renamed to `$transform-shadow-default-offset-y`.
- Util/transform: `$util-shadow-default-blur` variable is renamed to `$transform-shadow-default-blur`.
- Util/transform: `$util-shadow-default-spread` variable is renamed to `$transform-shadow-default-spread`.
- Util/typography: `outline` mixin is moved to typography library.
