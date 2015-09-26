# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class StylusPlugin extends BasePlugin
		# Plugin name
		name: 'stylus'

		# Plugin config
		config:
			stylusRequire: null
			stylusLibraries:
				nib: true
			stylusOptions:
				compress: true
				'include css': true
			environments:
				development:
					stylusOptions:
						compress: false

		# Constructor
		constructor: ->
			# Prepare
			super

			# Require Stylus
			@stylus = @getConfig().stylusRequire || require('stylus')

			# Chain
			@

		# Render some content
		render: (opts,next) ->
			# Prepare
			{inExtension,outExtension,content,file} = opts
			config = @getConfig()

			# Check extensions
			if inExtension in ['styl','stylus'] and outExtension in ['css',null]
				# Create our style
				style = @stylus(opts.content).set('filename', file.get('fullPath'))

				# Apply our options
				for own option,value of config.stylusOptions
					if option == 'resolve url'
						style.define('url', @stylus.resolver(value))
					else
						style.set(option, value)

				# Apply our libraries
				for own library,value of config.stylusLibraries
					continue  if !value
					value = undefined  if value is true
					style.use(require(library)(value))

				# Render our style
				style.render (err,output) ->
					# Check for errors, and return to docpad if so
					return next(err)  if err

					# Apply result
					opts.content = output

					# Done, return to docpad
					return next()

			# Some other extension
			else
				# Nothing to do, return back to DocPad
				return next()

