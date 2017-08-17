class jsfontscale
	constructor: (@windowSizeAtDefaultScale = 1000, @maxScale = 140, @minScale = 40)->
		$(window).on "resize", @run.bind @
		@run()

	run: ()->
		scale = Math.round ( $(window).width() / @windowSizeAtDefaultScale ) * 100
		scale = Math.max scale, @minScale
		scale = Math.min scale, @maxScale
		$("body").css("font-size", scale + "%")
