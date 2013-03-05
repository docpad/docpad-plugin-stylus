# Stylus Plugin for DocPad
Adds support for the [Stylus](http://learnboost.github.com/stylus/) CSS pre-processor to [DocPad](https://docpad.org)

Convention:  `.css.styl|stylus`


## Install

```
npm install --save docpad-plugin-stylus
```


## Configure

### Use [nib](http://visionmedia.github.com/nib/)
Nib is a small and powerful library for the Stylus CSS language, providing robust cross-browser CSS3 mixins to make your life as a designer easier. By default nib support is enabled, but it can be disabled by setting the `useNib` option to `false`.

This allows you to include the entire library by using:
```css
@import 'nib'
```

Although, if you prefer to use individual parts like gradient support, you can by using:
```css
@import 'nib/gradients'
```

### Compress
By default we compress the output for all environments except the development environment. Set the `compress` option to either `true` or `false` to change this.


## History
You can discover the history inside the `History.md` file


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2012 [Bevry Pty Ltd](http://bevry.me)
<br/>Copyright &copy; 2011 [Benjamin Lupton](http://balupton.com)
