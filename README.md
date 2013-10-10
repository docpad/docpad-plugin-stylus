# [Stylus](http://learnboost.github.com/stylus/) Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-stylus.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-stylus "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-stylus.png)](https://npmjs.org/package/docpad-plugin-stylus "View this project on NPM")
[![Gittip donate button](http://badgr.co/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/au/cgi-bin/webscr?cmd=_flow&SESSION=IHj3DG3oy_N9A9ZDIUnPksOi59v0i-EWDTunfmDrmU38Tuohg_xQTx0xcjq&dispatch=5885d80a13c0db1f8e263663d3faee8d14f86393d55a810282b64afed84968ec "Donate once-off to this project using Paypal")

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

### Using Nib

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



## History
[You can discover the history inside the `History.md` file](https://github.com/bevry/docpad-plugin-stylus/blob/master/History.md#files)



## Contributing
[You can discover the contributing instructions inside the `Contributing.md` file](https://github.com/bevry/docpad-plugin-stylus/blob/master/Contributing.md#files)



## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2012+ [Bevry Pty Ltd](http://bevry.me) <us@bevry.me>
<br/>Copyright &copy; 2011 [Benjamin Lupton](http://balupton.com) <b@lupton.cc>
