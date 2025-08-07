#import "@local/hallon:0.1.0" as hallon: subfigure

// apply subfigure styles
#show: hallon.subfig-style

= Example

#let example-fig = rect(fill: aqua)

#figure(
	grid(
		columns: 2, gutter: 1.5em,
		subfigure(example-fig, caption: [foo], label: <fig1-a>),
		subfigure(example-fig, caption: [bar], label: <fig1-b>),
	),
	gap: 1em,
	caption:[baz.],
) <fig1>

See @fig1-a and @fig1-b of @fig1.
