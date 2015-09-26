# [Stylus](http://learnboost.github.io/stylus/) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://img.shields.io/travis/docpad/docpad-plugin-stylus/master.svg)](http://travis-ci.org/docpad/docpad-plugin-stylus "Check this project's build status on TravisCI")
[![NPM version](https://img.shields.io/npm/v/docpad-plugin-stylus.svg)](https://npmjs.org/package/docpad-plugin-stylus "View this project on NPM")
[![NPM downloads](https://img.shields.io/npm/dm/docpad-plugin-stylus.svg)](https://npmjs.org/package/docpad-plugin-stylus "View this project on NPM")
[![Dependency Status](https://img.shields.io/david/docpad/docpad-plugin-stylus.svg)](https://david-dm.org/docpad/docpad-plugin-stylus)
[![Dev Dependency Status](https://img.shields.io/david/dev/docpad/docpad-plugin-stylus.svg)](https://david-dm.org/docpad/docpad-plugin-stylus#info=devDependencies)<br/>
[![Gratipay donate button](https://img.shields.io/gratipay/docpad.svg)](https://www.gratipay.com/docpad/ "Donate weekly to this project using Gratipay")
[![Flattr donate button](https://img.shields.io/badge/flattr-donate-yellow.svg)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://img.shields.io/badge/paypal-donate-yellow.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](https://img.shields.io/badge/bitcoin-donate-yellow.svg)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")
[![Wishlist browse button](https://img.shields.io/badge/wishlist-donate-yellow.svg)](http://amzn.com/w/2F8TXKSNAFG4V "Buy an item on our wishlist for us")

<!-- /BADGES -->


Adds support for the [Stylus](http://learnboost.github.io/stylus/) CSS pre-processor to [DocPad](http://docpad.org)

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
		stylusRequire: null
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

### Using external Stylus
If you'd like to use not the Stylus version that goes with the plugin, but your custom one (patched or of a previous version), you could use the `stylusRequire` setting by passing your version to it:

``` coffee
plugins:
	stylus:
		stylusRequire: require('stylus')
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
npm install --save axis
```

Then update our DocPad configuration file with:

``` coffee
plugins:
	stylus:
		stylusLibraries:
			nib: false
			'axis': true
```

You can also customise the configuration sent to the library by doing the following, in this case, we set the [axis `implicit` property to `false`](https://github.com/jenius/axis#usage):

``` coffee
plugins:
	stylus:
		stylusLibraries:
			nib: false
			'axis':
				implicit: false
```


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-stylus/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-stylus/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)
- Rob Loach <robloach@gmail.com> (https://github.com/RobLoach)
- Anton Wilhelm <timaschew@gmail.com> (https://github.com/timaschew)

### Sponsors

No sponsors yet! Will you be the first?

[![Gratipay donate button](https://img.shields.io/gratipay/docpad.svg)](https://www.gratipay.com/docpad/ "Donate weekly to this project using Gratipay")
[![Flattr donate button](https://img.shields.io/badge/flattr-donate-yellow.svg)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://img.shields.io/badge/paypal-donate-yellow.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](https://img.shields.io/badge/bitcoin-donate-yellow.svg)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")
[![Wishlist browse button](https://img.shields.io/badge/wishlist-donate-yellow.svg)](http://amzn.com/w/2F8TXKSNAFG4V "Buy an item on our wishlist for us")

### Contributors

These amazing people have contributed code to this project:

- [ainop](https://github.com/ainop) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=ainop)
- [Anton Wilhelm](https://github.com/timaschew) <timaschew@gmail.com> — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=timaschew)
- [Benjamin Lupton](https://github.com/balupton) <b@lupton.cc> — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=balupton)
- [chase](https://github.com/chase) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=chase)
- [intval](https://github.com/intval) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=intval)
- [kizu](https://github.com/kizu) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=kizu)
- [lbilharz](https://github.com/lbilharz) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=lbilharz)
- [mjrev](https://github.com/mjrev) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=mjrev)
- [Rob Loach](https://github.com/RobLoach) <robloach@gmail.com> — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=RobLoach)
- [shinnn](https://github.com/shinnn) — [view contributions](https://github.com/docpad/docpad-plugin-stylus/commits?author=shinnn)

[Become a contributor!](https://github.com/docpad/docpad-plugin-stylus/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2012+ Bevry Pty Ltd <us@bevry.me> (http://bevry.me)

<!-- /LICENSE -->


