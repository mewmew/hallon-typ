#import "@local/hallon:0.1.0" as hallon: nameref, subfigure

// apply subfigure styles
#show: hallon.subfig-style

#show link: set text(fill: blue)
#show ref: set text(fill: blue)

= Subfigure example

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

= Named references example

Refer to the #nameref(<sec-beginning-of-summer>) section.

== Rikka
<sec-beginning-of-summer>

The Rikka microseason marks the _Beginning of Summer_.
