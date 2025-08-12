// --- [ dependent counter ] ---------------------------------------------------

// Based on heading-counter code from https://github.com/jbirnick/typst-headcount (MIT)

#import "util.typ": normalize-length

#let reset-heading-counter(counter, levels: 1) = it => {
	if it.level <= levels {
		counter.update((0,))
	}
	it
}

#let reset-figure-counter(counter) = it => {
	counter.update((0,))
	it
}

#let heading-figure-dependent-numbering(style, levels: 1) = (..num) => {
	let h-nums = counter(heading).get()
	let f-num = counter(figure.where(kind: image)).get().first()
	numbering(style, ..normalize-length(h-nums, levels), f-num, num.pos().first())
}

#let heading-dependent-numbering(style, levels: 1) = (..num) => {
	let h-nums = counter(heading).get()
	numbering(style, ..normalize-length(h-nums, levels), num.pos().first())
}

// --- [ subfigure ] -----------------------------------------------------------

#let style-subfig(body, levels: 0) = {
	// Style subfigure caption numbering.
	show figure.where(kind: "subfigure"): outer => {
		show figure.caption: it => context {
			set align(left)
			[#strong(it.counter.display("(a)")) #it.body]
		}
		outer
	}

	// Style figure caption numbering.
	show figure.caption: it => context {
		set align(left)
		strong[#it.supplement~#it.counter.display(it.numbering)#it.separator]
		it.body
	}

	// Use optionally heading-dependent numbering of figures and subfigures.
	let fig-numbering = "1"
	let subfig-numbering = "1a"
	if levels > 0 {
		fig-numbering = "1."*levels + fig-numbering       // e.g. "1.1"
		subfig-numbering = "1."*levels + subfig-numbering // e.g. "1.1a"
	}
	show figure.where(kind: image): set figure(numbering: heading-dependent-numbering(fig-numbering, levels: levels))
	show figure.where(kind: "subfigure"): set figure(numbering: heading-figure-dependent-numbering(subfig-numbering, levels: levels))

	// Reset counters at parent headings and figures.
	show heading: reset-heading-counter(counter(figure.where(kind: image)), levels: levels)
	show figure.where(kind: image): reset-figure-counter(counter(figure.where(kind: "subfigure")))

	// Set default supplement for subfigures.
	show figure.where(kind: "subfigure"): set figure(supplement: "Figure")

	body
}

// Based on example by @RaulDurand (see https://github.com/typst/typst/issues/246#issuecomment-2953421350)

// subfigure creates a new subfigure with optional caption and label.
#let subfigure(body, caption: none, label: none) = {
	let fig = figure(body, caption: caption, kind: "subfigure", outlined: false)
	if label == none {
		fig
	} else {
		[ #fig #label ]
	}
}
