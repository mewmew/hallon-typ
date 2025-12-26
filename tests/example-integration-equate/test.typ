// Depends on https://github.com/EpicEricEE/typst-equate/pull/23

#set page(width: 12cm, height: auto)

#import "@preview/hallon:0.1.3" as hallon: subfigure
#import "@preview/equate:0.3.2": equate, equate-ref

#set heading(numbering: "1.1")

#show: equate.with(breakable: true, sub-numbering: true)
#set math.equation(numbering: "(1.1.a)")

#show: hallon.style-figures(heading-levels: 1).rule

#let style-equations = hallon.style-equations(heading-levels: 1)
#show: style-equations.rule
#show ref: it => equate-ref(it, ref => (style-equations.numbering-function)(ref))

// === [ Main matter ] =========================================================

= Title

The dot product of two vectors $arrow(a)$ and $arrow(b)$ can
be calculated as shown in @dot-product.

$
  chevron.l a, b chevron.r &= arrow(a) dot arrow(b) \
                       &= a_1 b_1 + a_2 b_2 + ... a_n b_n \
                       &= sum_(i=1)^n a_i b_i. #<sum>
$ <dot-product>

The sum notation in @sum is a useful way to express the dot
product of two vectors.

The dot product of two vectors $arrow(a)$ and $arrow(b)$ can
be calculated as shown in @dot-product2.

$
  chevron.l a, b chevron.r &= arrow(a) dot arrow(b) \
                       &= a_1 b_1 + a_2 b_2 + ... a_n b_n \
                       &= sum_(i=1)^n a_i b_i. #<sum2>
$ <dot-product2>

The sum notation in @sum2 is a useful way to express the dot
product of two vectors.

= Title

The dot product of two vectors $arrow(a)$ and $arrow(b)$ can
be calculated as shown in @dot-product3.

$
  chevron.l a, b chevron.r &= arrow(a) dot arrow(b) \
                       &= a_1 b_1 + a_2 b_2 + ... a_n b_n \
                       &= sum_(i=1)^n a_i b_i. #<sum3>
$ <dot-product3>

The sum notation in @sum3 is a useful way to express the dot
product of two vectors.

The dot product of two vectors $arrow(a)$ and $arrow(b)$ can
be calculated as shown in @dot-product4.

$
  chevron.l a, b chevron.r &= arrow(a) dot arrow(b) \
                       &= a_1 b_1 + a_2 b_2 + ... a_n b_n \
                       &= sum_(i=1)^n a_i b_i. #<sum4>
$ <dot-product4>

The sum notation in @sum4 is a useful way to express the dot
product of two vectors.

#set heading(numbering: "①.1")

#counter(heading).update(0) // reset heading counter for appendices.

= Appendix

The dot product of two vectors $arrow(a)$ and $arrow(b)$ can
be calculated as shown in @dot-product5.

$
  chevron.l a, b chevron.r &= arrow(a) dot arrow(b) \
                       &= a_1 b_1 + a_2 b_2 + ... a_n b_n \
                       &= sum_(i=1)^n a_i b_i. #<sum5>
$ <dot-product5>

The sum notation in @sum3 is a useful way to express the dot
product of two vectors.

The dot product of two vectors $arrow(a)$ and $arrow(b)$ can
be calculated as shown in @dot-product6.

$
  chevron.l a, b chevron.r &= arrow(a) dot arrow(b) \
                       &= a_1 b_1 + a_2 b_2 + ... a_n b_n \
                       &= sum_(i=1)^n a_i b_i. #<sum6>
$ <dot-product6>

The sum notation in @sum6 is a useful way to express the dot
product of two vectors.

See @dot-product, @dot-product2, @dot-product3, @dot-product4, @dot-product5, @dot-product6

See @sum, @sum2, @sum3, @sum4, @sum5, @sum6
