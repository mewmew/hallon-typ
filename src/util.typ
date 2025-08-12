// === [ Array functions ] =====================================================

// Based on heading-counter code from https://github.com/jbirnick/typst-headcount (MIT)
#let normalize-length(array, length) = {
	if array.len() > length {
		array = array.slice(0, length)
	} else if array.len() < length {
		let pad = length - array.len()
		array += pad*(0,)
	}
	return array
}

// === [ String functions ] ====================================================

#let title-case(s) = {
	let c = s.first()
	upper[#c]
	s.slice(c.len(),)
}
