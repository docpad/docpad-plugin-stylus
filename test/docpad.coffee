axisPath = require('path').resolve('./test/node_modules/axis-css')

docpadConfig =
	plugins:
		stylus:
			stylusLibraries:
				nib: true

docpadConfig.plugins.stylus.stylusLibraries[axisPath] =
	implicit: false

module.exports = docpadConfig