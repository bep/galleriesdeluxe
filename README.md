[![Netlify Status](https://api.netlify.com/api/v1/badges/8c2503b5-5e63-445a-b6ef-113585350aa7/deploy-status)](https://app.netlify.com/sites/galleriesdeluxe/deploys)

**Note:** The photos in this repo are not for reuse. They are used for demo purposes only.

See the demo at [galleriesdeluxe.netlify.app](https://galleriesdeluxe.netlify.app/).

This is built on top of and the plural version of [gallerydeluxe](https://github.com/bep/gallerydeluxe).

I will create a starter template for this theme later, but for now see the [exampleSite](./exampleSite) folder.

## Configuration

See [vars.css](https://github.com/bep/galleriesdeluxe/blob/main/assets/css/galleriesdeluxe/vars.css) for a list of CSS custom properties.

These can be overridden either via Hugo config or by adding a CSS file to your project:

1. In your Hugo config via `params.galleriesdeluxe.cssvars` (highest priority):

```toml
[params.galleriesdeluxe]
    [params.galleriesdeluxe.cssvars]
        color-background = "#1d1e2c"
```

2. By adding a [assets/css/galleriesdeluxe/vars-custom.css](https://github.com/bep/galleriesdeluxe/blob/main/exampleSite/assets/css/galleriesdeluxe/vars-custom.css) file to your project.

## Sass was replaced with CSS in v0.6.0

Starting with v0.6.0, this theme uses plain CSS with [css.Build](https://gohugo.io/functions/css/build/) instead of Sass. Dart Sass is no longer required.

If you have customized the theme, you need to migrate:

1. Rename your `assets/scss/galleriesdeluxe/vars-custom.scss` to `assets/css/galleriesdeluxe/vars-custom.css`.
2. Convert Sass variables to CSS custom properties, e.g. `$color-primary: #3a98b9 !default;` becomes `--color-primary: #3a98b9;` inside a `:root {}` block.
3. Rename `params.galleriesdeluxe.sassvars` to `params.galleriesdeluxe.cssvars` and remove `params.galleriesdeluxe.sass_transpiler` from your Hugo config. Note that the variable names are now CSS custom property names (e.g. `color-background` instead of `color_background`).
4. If you relied on the automatic light/dark text color (the old `dc` mixin), set `--color-text` and `--color-text-footer` explicitly in your `vars-custom.css`.
