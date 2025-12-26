# hallon

A collection of utility functions for Typst.

## Named references example

See [tests/example-nameref/test.typ](tests/example-nameref/test.typ).

![Named references example](tests/example-nameref/ref/1.png)

## Subfigures example

See [tests/example-subfig/test.typ](tests/example-subfig/test.typ).

![Subfigures example](tests/example-subfig/ref/1.png)

## Heading-dependent numbering of figures and equations

See [tests/example-figs/test.typ](tests/example-figs/test.typ).

![Heading-dependent numbering of figures](tests/example-figs/ref/1.png)

See [tests/example-appendix/test.typ](tests/example-appendix/test.typ).

![Heading-dependent numbering of figures and equations with appendices](tests/example-appendix/ref/1.png)

## Custom figure and subfigure caption style

See [tests/example-custom-caption/test.typ](tests/example-custom-caption/test.typ).

![Custom figure and subfigure caption style](tests/example-custom-caption/ref/1.png)

## Heading-dependent numbering of equations integrated with `equate` package

See [tests/example-integration-equate/test.typ](tests/example-integration-equate/test.typ).

![Heading-dependent numbering of equations integrated with equate package](tests/example-integration-equate/ref/1.png)

## Heading-dependent numbering of figures and equations with custom `ref` show rule

See [tests/example-ref-show-rule/test.typ](tests/example-ref-show-rule/test.typ).

![Heading-dependent numbering of figures and equations with custom ref show rule](tests/example-ref-show-rule/ref/1.png)

## Etymology

Hallon (`ˈhàlɔn`) means raspberry in Swedish, a befitting name for a package that contains *"lite smått och gott"*.

## Development

Use https://github.com/typst-community/tytanic for testing.

Create a symlink to more easily develop your package changes:

```
DEV_TEMPLATE=hallon
DEV_VERSION=0.1.3

mkdir -p ~/.cache/typst/packages/preview/$DEV_TEMPLATE
rm -R ~/.cache/typst/packages/preview/$DEV_TEMPLATE/$DEV_VERSION
ln -s $PWD ~/.cache/typst/packages/preview/$DEV_TEMPLATE/$DEV_VERSION
```