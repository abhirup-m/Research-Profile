#import "settings.typ": *

#show: style.with(
  numCols: 2,
)


#place(
  top,
  float: true,
  scope: "parent",
  [#cvTitle(details.name, details.position)
  #text(size: imp-size, weight: "semibold", details.affiliation)
  #v(-0.4em)
  #stack(
    dir: ltr,
    spacing: 1fr,
    [#fa-location-dot()#h(0.4em)#details.contacts.location],
    [#fa-envelope()#h(0.4em)#details.contacts.email],
    link(details.contacts.arxiv, [#fa-layer-group()#h(0.4em)arXiv]),
    link(details.contacts.website, [#fa-link()#h(0.4em)Website]),
    [#fa-phone()#h(0.4em)#details.contacts.phone],
  )
  #line(length:100%)]
)

I am currently completing my Ph.D. in Physics at the Indian Institute of Science Education and Research (IISER) Kolkata under the supervision of *Prof. Siddhartha Lal*. My doctoral research focuses on *strongly correlated quantum matter*, in particular understanding Mott metal–insulator transitions and the emergence of non-Fermi liquid phases through the lens of *Kondo breakdown*. I anticipate that I will be able to join for a postdoc position by *February 2026*.

My doctoral research work spans a number of themes, more details of which can be found in my research statement:
- *Kondo breakdown and Mott physics*: Developed quantum impurity models that successfully capture key aspects of Mott criticality. Demonstrates how non-Fermi liquid excitations and nodal-antinodal dichotomy emerge at quantum critical points. [arXiv:2507.17201, New J. Phys. 25 113011, J. Phys.: Condens. Matter 35 315601]

- *Entanglement renormalisation in solvable models*: Showed how renormalisation via entanglement scaling in a free fermion system (with or without a mass gap) leads to the emergence of a holographic dimension, serving as a constructive demonstration of the holographic principle in a simple model. [J. Phys. A: Math. Theor. 57 275401]

#colbreak()
- *Phenomenological modelling of magnetic dimensional crossover*: In collaboration with an experimental group, we came up with a simple model of phonons interacting with lattice spin fluctuations that explains various experimental features of a two-step magnetic dimensional crossover observed in CrSiTe$#sub[3]$. [Phys. Rev. B 111, L140414]

I am working on a number of other projects which I plan to finish before joining for a postdoc:

- Quantum criticality in a model of heavy-fermions

- Punctured-Chern invariant in integer quantum hall transitions


Looking ahead, I aim to build on this by investigating universal aspects of quantum criticality, particularly developing a unifying framework for fermionic criticality. I am particularly interested in exploring the role of topology and entanglement in such phase transitions. I believe that my ability to quickly learn and adapt new methods, both analytical and numerical, make me particularly suitable for this position.

Enclosed are my curriculum vitae, research statement, and supporting materials. I would be glad to provide further information upon request. Thank you for your time and consideration. I look forward to the possibility of contributing to your research community.

#set par(first-line-indent: 0em)
#align(right, [
Sincerely,\
Abhirup Mukherjee
])
