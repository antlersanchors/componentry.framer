class SuperCard extends Layer
	constructor: (options = {}) ->
		super _.defaults options,
		
		@template = card
		@templateTitle = title
		
		options.width = @template.width
		options.height = @template.height
		options.backgroundColor = @template.backgroundColor

		@title = new TextLayer
			parent: @
			props: title.props
			font: title.font
			color: title.color
			text: options.cardText
			
dogeCard = new SuperCard
	x: 10
	y: 500
	template: card
	cardText: "So Template"
	
awesomeCard = new SuperCard
	x: 10
	y: 200
	template: card
	cardText: "Much Party"