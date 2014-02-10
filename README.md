# [Stylus](http://learnboost.github.com/stylus/) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/bevry/docpad-plugin-stylus.png?branch=master)](http://travis-ci.org/bevry/docpad-plugin-stylus "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-stylus.png)](https://npmjs.org/package/docpad-plugin-stylus "View this project on NPM")
[![Dependency Status](https://david-dm.org/bevry/docpad-extras.png?theme=shields.io)](https://david-dm.org/bevry/docpad-extras)
[![Development Dependency Status](https://david-dm.org/bevry/docpad-extras/dev-status.png?theme=shields.io)](https://david-dm.org/bevry/docpad-extras#info=devDependencies)<br/>
[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](http://img.shields.io/bitcoin/donate.png?color=yellow)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")

<!-- /BADGES -->


Adds support for the [Stylus](http://learnboost.github.com/stylus/) CSS pre-processor to [DocPad](http://docpad.org)

Convention:  `.css.styl|stylus`


## Install

```
docpad install stylus
```


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the following to your [DocPad configuration file](http://docpad.org/docs/config).

``` coffee
plugins:
	stylus:
		stylusLibraries:
			nib: true
		stylusOptions:
			compress: true
			'include css': true

# Disable compression on the development environment
environments:
	development:
		stylusOptions:
			compress: false
```

### Stylus Options
You can customise the options sent to stylus using the `stylusOptions` object. [See the available options here.](http://learnboost.github.io/stylus/docs/js.html)


### Stylus Libraries
By default we include the  [Nib Stylus Library](http://visionmedia.github.io/nib/).

#### Using Nib

Nib is a small and powerful library for the Stylus CSS language, providing robust cross-browser CSS3 mixins to make your life as a designer easier. By default nib support is enabled, but it can be disabled by setting the `useNib` option to `false`.

To use Nib, add the following to your main stylus file:
```css
@import 'nib'
```

Alternatively, if you would prefer to use individual parts like gradient support, you can do this by using:
```css
@import 'nib/gradients'
```

#### Turning off Nib

You can also turn off the inclusion of the Nib by setting the following:

``` coffee
plugins:
	stylus:
		stylusLibraries:
			nib: false
```


#### Using a custom Library (like Axis)

You can include your own custom libraries, providing you npm install them yourself.

To use the [Axis Stylus Library](http://roots.cx/axis/) instead of Nib, you first first install axis by doing:

``` bash
npm install --save axis-css
```

Then update our DocPad configuration file with:

``` coffee
plugins:
	stylus:
		stylusLibraries:
			nib: false
			'axis-css': true
```

You can also customise the configuration sent to the library by doing the following, in this case, we set the [axis `implicit` property to `false`](https://github.com/jenius/axis#usage):

``` coffee
plugins:
	stylus:
		stylusLibraries:
			nib: false
			'axis-css':
				implicit: false
```


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/bevry/docpad-plugin-stylus/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/bevry/docpad-plugin-stylus/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](http://img.shields.io/bitcoin/donate.png?color=yellow)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")

### Contributors

These amazing people have contributed code to this project:

- [Benjamin Lupton](https://github.com/balupton) <b@lupton.cc> — [view contributions](https://github.com/bevry/docpad-extras/commits?author=balupton)

[Become a contributor!](https://github.com/bevry/docpad-plugin-stylus/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2012+ Bevry Pty Ltd <us@bevry.me> (http://bevry.me)

<!-- /LICENSE -->


