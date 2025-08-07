// Based on example by @RaulDurand (see https://github.com/typst/typst/issues/246#issuecomment-2953421350)

#let subfigure(body, caption: none, label: none) = {
	// TODO: use `supplement: "Figure"` when https://github.com/typst/typst/issues/6722
	// is resolved.
	//
	// Using "Fig." for now. In the future, this should be configured with a show-set rule
	// (for consistency with default settings for `figure(kind: image)`.
	let fig = figure(body, caption: caption, kind: "subfigure", supplement: "Fig.", outlined: false)
	if label == none {
		return fig
	}
	return [ #fig #label ]
}

#let subfig-style(body) = {
	show figure.where(kind: image): it => {
		// reset subfigure counter when displaying parent figure
		counter(figure.where(kind: "subfigure")).update(0)

		it
	}

	show figure.where(kind: "subfigure"): set figure(numbering: num => {
		let fig-num = counter(figure.where(kind: image)).get().first()
		let subfig-num = counter(figure.where(kind: "subfigure")).get().first()
		numbering("1a", fig-num, subfig-num)
	})

	show figure.where(kind: "subfigure"): outer => {
		show figure.caption: it => context {
			set align(left)
			strong(it.counter.display("(a)"))
			[ ]
			it.body
		}
		outer
	}

	show figure.where(kind: image): outer => {
		show figure.caption: it => context {
			set align(left)
			strong[#it.supplement #it.counter.display()#it.separator]
			it.body
		}
		outer
	}

	show figure.where(kind: image): set figure(supplement: "Fig.")
	show figure.where(kind: image): set figure.caption(separator: [. ])
	// TODO: uncomment when https://github.com/typst/typst/issues/6722 is resolved.
	//show figure.where(kind: "subfigure"): set figure(supplement: "Fig.")

	body
}
