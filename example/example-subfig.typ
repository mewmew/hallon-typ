#set page(width: 12cm, height: auto)

#import("@local/hallon:0.1.0") as hallon: subfigure

// Apply subfigure styles.
#show: hallon.style-subfig

// Use short supplement for figures and subfigures (place after
// `hallon.style-subfig` show rule for supplement of "subfigure" kind to take
// effect).
#show figure.where(kind: image): set figure(supplement: "Fig.")
#show figure.where(kind: image): set figure.caption(separator: [. ])
#show figure.where(kind: "subfigure"): set figure(supplement: "Fig.")

// Highlight links.
#show link: set text(fill: blue)
#show ref: set text(fill: blue)

#let example-fig = rect(fill: aqua)

// === [ subfigure example ] ===================================================

= Subfigure example

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig-example-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig-example-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig-example>

See @fig-example, @subfig-example-foo and @subfig-example-bar.
