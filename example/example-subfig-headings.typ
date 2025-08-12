#set page(width: 12cm, height: auto)

#import("@local/hallon:0.1.0") as hallon: subfigure

// Apply subfigure styles (using one heading level as figure numbering prefix,
// e.g. "1.1a").
#show: hallon.style-subfig.with(levels: 1)

// Set heading numbering style.
#set heading(numbering: "1.1")

// Highlight links.
#show link: set text(fill: blue)
#show ref: set text(fill: blue)

#let example-fig = rect(fill: aqua)

// === [ heading dependent figure numbering ] ==================================

= Heading one

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig1-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig1-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig1>

See @fig1, @subfig1-foo and @subfig1-bar.

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig2-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig2-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig2>

See @fig2, @subfig2-foo and @subfig2-bar.

= Heading two

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig3-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig3-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig3>

See @fig3, @subfig1-foo and @subfig1-bar.

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig4-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig4-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig4>

See @fig4, @subfig4-foo and @subfig4-bar.
