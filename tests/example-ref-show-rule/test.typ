#set page(width: 12cm, height: auto)

#import "@preview/hallon:0.1.3" as hallon: subfigure

#let style-figures = hallon.style-figures(heading-levels: 1)
#show: style-figures.rule
#let style-equations = hallon.style-equations(heading-levels: 1)
#show: style-equations.rule

#show ref: it => {
  if it.element == none or it.element.func() != math.equation { return it }
  link(it.element.location(), "Eq. " + numbering(
    (style-equations.numbering-function)(it),
    ..counter(math.equation).at(it.element.location())
  ))
}

#show ref: it => {
  if it.element == none or it.element.func() != figure { return it }
  link(it.element.location(), "Fig. " + numbering(
    (style-figures.numbering-function)(it),
    ..counter(figure.where(kind: it.element.kind)).at(it.element.location())
  ))
}

// === [ Main matter ] =========================================================

#set heading(numbering: "1.1")

#let example-fig = rect(fill: aqua)

See @fig1, @subfig1-foo and @subfig1-bar.

See @eq1.

See @fig2, @subfig2-foo and @subfig2-bar.

See @eq2.

See @fig3, @subfig3-foo and @subfig3-bar.

See @eq3.

See @fig4, @subfig4-foo and @subfig4-bar.

See @eq4.

See @fig-app1, @subfig-app1-foo and @subfig-app1-bar.

See @eq-app1.

See @fig-app2, @subfig-app2-foo and @subfig-app2-bar.

See @eq-app2.

See @fig-app3, @subfig-app3-foo and @subfig-app3-bar.

See @eq-app3.

See @fig-app4, @subfig-app4-foo and @subfig-app4-bar.

See @eq-app4.

= Section one

See @fig1, @subfig1-foo and @subfig1-bar.

See @eq1.

See @fig2, @subfig2-foo and @subfig2-bar.

See @eq2.

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

$ 1 + 1 = 2 $ <eq1>

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

$ 1 + 1 = 2 $ <eq2>

= Section two

See @fig3, @subfig3-foo and @subfig3-bar.

See @eq3.

See @fig4, @subfig4-foo and @subfig4-bar.

See @eq4.

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

$ 1 + 1 = 2 $ <eq3>

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

$ 1 + 1 = 2 $ <eq4>

// === [ Appendix example ] ====================================================

#set heading(numbering: "①.1")

#counter(heading).update(0) // reset heading counter for appendices.

= Appendix one

See @fig-app1, @subfig-app1-foo and @subfig-app1-bar.

See @eq-app1.

See @fig-app2, @subfig-app2-foo and @subfig-app2-bar.

See @eq-app2.

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig-app1-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig-app1-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig-app1>

$ 1 + 1 = 2 $ <eq-app1>

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig-app2-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig-app2-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig-app2>

$ 1 + 1 = 2 $ <eq-app2>

= Appendix two

See @fig-app3, @subfig-app3-foo and @subfig-app3-bar.

See @eq-app3.

See @fig-app4, @subfig-app4-foo and @subfig-app4-bar.

See @eq-app4.

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig-app3-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig-app3-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig-app3>

$ 1 + 1 = 2 $ <eq-app3>

#figure(
	grid(
		columns: 2,
		gutter: 1.5em,
		subfigure(
			example-fig,
			caption: [foo],
			label: <subfig-app4-foo>,
		),
		subfigure(
			example-fig,
			caption: [bar],
			label: <subfig-app4-bar>,
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig-app4>

$ 1 + 1 = 2 $ <eq-app4>

See @fig1, @subfig1-foo and @subfig1-bar.

See @eq1.

See @fig2, @subfig2-foo and @subfig2-bar.

See @eq2.

See @fig3, @subfig3-foo and @subfig3-bar.

See @eq3.

See @fig4, @subfig4-foo and @subfig4-bar.

See @eq4.

See @fig-app1, @subfig-app1-foo and @subfig-app1-bar.

See @eq-app1.

See @fig-app2, @subfig-app2-foo and @subfig-app2-bar.

See @eq-app2.

See @fig-app3, @subfig-app3-foo and @subfig-app3-bar.

See @eq-app3.

See @fig-app4, @subfig-app4-foo and @subfig-app4-bar.

See @eq-app4.
