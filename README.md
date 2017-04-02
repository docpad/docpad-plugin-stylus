# [Stylus](http://learnboost.github.io/stylus/) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

<span class="badge-travisci"><a href="http://travis-ci.org/docpad/docpad-plugin-stylus" title="Check this project's build status on TravisCI"><img src="https://img.shields.io/travis/docpad/docpad-plugin-stylus/master.svg" alt="Travis CI Build Status" /></a></span>
<span class="badge-npmversion"><a href="https://npmjs.org/package/docpad-plugin-stylus" title="View this project on NPM"><img src="https://img.shields.io/npm/v/docpad-plugin-stylus.svg" alt="NPM version" /></a></span>
<span class="badge-npmdownloads"><a href="https://npmjs.org/package/docpad-plugin-stylus" title="View this project on NPM"><img src="https://img.shields.io/npm/dm/docpad-plugin-stylus.svg" alt="NPM downloads" /></a></span>
<span class="badge-daviddm"><a href="https://david-dm.org/docpad/docpad-plugin-stylus" title="View the status of this project's dependencies on DavidDM"><img src="https://img.shields.io/david/docpad/docpad-plugin-stylus.svg" alt="Dependency Status" /></a></span>
<span class="badge-daviddmdev"><a href="https://david-dm.org/docpad/docpad-plugin-stylus#info=devDependencies" title="View the status of this project's development dependencies on DavidDM"><img src="https://img.shields.io/david/dev/docpad/docpad-plugin-stylus.svg" alt="Dev Dependency Status" /></a></span>
<br class="badge-separator" />
<span class="badge-patreon"><a href="https://patreon.com/bevry" title="Donate to this project using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a></span>
<span class="badge-opencollective"><a href="https://opencollective.com/bevry" title="Donate to this project using Open Collective"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
<span class="badge-gratipay"><a href="https://www.gratipay.com/bevry" title="Donate weekly to this project using Gratipay"><img src="https://img.shields.io/badge/gratipay-donate-yellow.svg" alt="Gratipay donate button" /></a></span>
<span class="badge-flattr"><a href="https://flattr.com/profile/balupton" title="Donate to this project using Flattr"><img src="https://img.shields.io/badge/flattr-donate-yellow.svg" alt="Flattr donate button" /></a></span>
<span class="badge-paypal"><a href="https://bevry.me/paypal" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span>
<span class="badge-bitcoin"><a href="https://bevry.me/bitcoin" title="Donate once-off to this project using Bitcoin"><img src="https://img.shields.io/badge/bitcoin-donate-yellow.svg" alt="Bitcoin donate button" /></a></span>
<span class="badge-wishlist"><a href="https://bevry.me/wishlist" title="Buy an item on our wishlist for us"><img src="https://img.shields.io/badge/wishlist-donate-yellow.svg" alt="Wishlist browse button" /></a></span>
<br class="badge-separator" />
<span class="badge-slackin"><a href="https://slack.bevry.me" title="Join this project's slack community"><img src="https://slack.bevry.me/badge.svg" alt="Slack community badge" /></a></span>

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

<h2>History</h2>

<a href="https://github.com/docpad/docpad-plugin-stylus/blob/master/HISTORY.md#files">Discover the release history by heading on over to the <code>HISTORY.md</code> file.</a>

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

<h2>Contribute</h2>

<a href="https://github.com/docpad/docpad-plugin-stylus/blob/master/CONTRIBUTING.md#files">Discover how you can contribute by heading on over to the <code>CONTRIBUTING.md</code> file.</a>

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

<h2>Backers</h2>

<h3>Maintainers</h3>

These amazing people are maintaining this project:

<ul><li><a href="https://github.com/timaschew">Anton Wilhelm</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=timaschew" title="View the GitHub contributions of Anton Wilhelm on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://balupton.com">Benjamin Lupton</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=balupton" title="View the GitHub contributions of Benjamin Lupton on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://robloach.net">Rob Loach</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=RobLoach" title="View the GitHub contributions of Rob Loach on repository docpad/docpad-plugin-stylus">view contributions</a></li></ul>

<h3>Sponsors</h3>

No sponsors yet! Will you be the first?

<span class="badge-patreon"><a href="https://patreon.com/bevry" title="Donate to this project using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a></span>
<span class="badge-opencollective"><a href="https://opencollective.com/bevry" title="Donate to this project using Open Collective"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
<span class="badge-gratipay"><a href="https://www.gratipay.com/bevry" title="Donate weekly to this project using Gratipay"><img src="https://img.shields.io/badge/gratipay-donate-yellow.svg" alt="Gratipay donate button" /></a></span>
<span class="badge-flattr"><a href="https://flattr.com/profile/balupton" title="Donate to this project using Flattr"><img src="https://img.shields.io/badge/flattr-donate-yellow.svg" alt="Flattr donate button" /></a></span>
<span class="badge-paypal"><a href="https://bevry.me/paypal" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span>
<span class="badge-bitcoin"><a href="https://bevry.me/bitcoin" title="Donate once-off to this project using Bitcoin"><img src="https://img.shields.io/badge/bitcoin-donate-yellow.svg" alt="Bitcoin donate button" /></a></span>
<span class="badge-wishlist"><a href="https://bevry.me/wishlist" title="Buy an item on our wishlist for us"><img src="https://img.shields.io/badge/wishlist-donate-yellow.svg" alt="Wishlist browse button" /></a></span>

<h3>Contributors</h3>

These amazing people have contributed code to this project:

<ul><li><a href="https://github.com/ainop">ainop</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=ainop" title="View the GitHub contributions of ainop on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="https://github.com/timaschew">Anton Wilhelm</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=timaschew" title="View the GitHub contributions of Anton Wilhelm on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://balupton.com">Benjamin Lupton</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=balupton" title="View the GitHub contributions of Benjamin Lupton on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="https://github.com/chase">Chase Colman</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=chase" title="View the GitHub contributions of Chase Colman on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://phpguide.co.il">Alexander Raskin</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=intval" title="View the GitHub contributions of Alexander Raskin on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://kizu.ru/en/">Roman Komarov</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=kizu" title="View the GitHub contributions of Roman Komarov on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://rplan.com">Lars Bilharz</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=lbilharz" title="View the GitHub contributions of Lars Bilharz on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="https://github.com/mjrev">mjrev</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=mjrev" title="View the GitHub contributions of mjrev on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://robloach.net">Rob Loach</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=RobLoach" title="View the GitHub contributions of Rob Loach on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="http://shinnn.github.io">Shinnosuke Watanabe</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=shinnn" title="View the GitHub contributions of Shinnosuke Watanabe on repository docpad/docpad-plugin-stylus">view contributions</a></li>
<li><a href="https://github.com/ixth">Mikhail Menshikov</a> — <a href="https://github.com/docpad/docpad-plugin-stylus/commits?author=ixth" title="View the GitHub contributions of Mikhail Menshikov on repository docpad/docpad-plugin-stylus">view contributions</a></li></ul>

<a href="https://github.com/docpad/docpad-plugin-stylus/blob/master/CONTRIBUTING.md#files">Discover how you can contribute by heading on over to the <code>CONTRIBUTING.md</code> file.</a>

<!-- /BACKERS -->


<!-- LICENSE/ -->

<h2>License</h2>

Unless stated otherwise all works are:

<ul><li>Copyright &copy; 2012+ <a href="http://bevry.me">Bevry Pty Ltd</a></li></ul>

and licensed under:

<ul><li><a href="http://spdx.org/licenses/MIT.html">MIT License</a></li></ul>

<!-- /LICENSE -->
