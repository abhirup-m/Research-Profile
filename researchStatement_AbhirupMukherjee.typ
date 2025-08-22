#import "@preview/muchpdf:0.1.1":*
#set page(
  paper: "us-letter",
  margin: (top: 1.5cm, bottom: 1cm, rest: 1.5cm),
)

#let papers = yaml("papers.yml")
#let authorise(authors) = {
  let authorList = []
  for (i, a) in authors.enumerate() {
    let author = a
    if a.contains(", ") {
      author = a.split(", ").rev().join(" ")
    }
    if author == "Abhirup Mukherjee" {
      authorList = authorList + text(weight: "semibold", author)
    } else {
      author = author.split(" ")
      author.at(0) = author.at(0).at(0)
      author = author.join(" ")
      authorList = authorList + author
    }
    if i < authors.len() - 1 {
      authorList = authorList + ", "
    }
  }
  return authorList
}

#let fontBig = "Bitter"
#let fontMain = "Barlow"

#let colMain = rgb("1F1F1F")
#let colBold = rgb("3F3F3F")
#let colName = rgb("#CC5500")
#let colSec = rgb("#135873")
#let colSub = rgb("#708090")
#let colAcc = rgb("FF4433")

#set par(justify: true, first-line-indent: 2em)
#set text(font:fontMain, fill: colMain, size: 8.5pt, weight: 550)
#set strong(delta: 150)
#show strong: it => {
  text(fill: colBold, weight: "bold", it.body)
}
#show heading.where(level:1): set block(below: 1em)
#show heading.where(level:1): set text(fill: colSec, weight: "bold", font: fontMain)
#show heading.where(level:2): set text(fill: colSub, weight: "bold", font: fontMain)
#show math.equation: set text(weight: "bold")
#set list(marker: square(width: 0.6em, fill: rgb("3f3f3f")))
#show link: set text(fill: colAcc)
#text(size: 2em, text(fill: colName, font: fontBig, weight: "semibold", [Abhirup Mukherjee]) + text(weight: "bold", [~~|~~]) + [#text(weight: "bold", fill: colSub, [Research]) Statement])

#columns(2, 
[
  I am a quantum condensed matter theorist focusing primarily on strongly correlated *quantum matter* - novel phases that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. Such phases are interesting because they cannot be organised according to the paradigm of spontaneous symmetry breaking and local order parameters. Instead, phase transitions involving such phases often involve changes in *topology*.
  #colbreak()

  My work presently focuses on understanding various features of Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture and understand crucial features of Mott transitions. More generally, I am interested in studying various models of interacting electrons with the goal of characterising various phases and the intervening phase transitions.
]
)

= Kondo breakdown as a route to understanding Mott transitions [@Mukherjee2023, @mukherjee2025]

#grid(
  columns: (1.2fr, 1fr),
  gutter: 1em,
  [== The Mott transition on the Bethe lattice in $d=infinity$

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. DMFT obtains a self-consistent solution of the *Mott MIT* for the $1\/2-$filled Hubbard model in infinite dimensions. This, however, precludes a deeper understanding of the *precise nature of the correlations* in the model, leaving open questions such as: (i) Since the Mott MIT is driven by local correlations, is there an effective quantum impurity model that describes this transition? (ii) What is the nature of the quantum critical metal at the transition?

#figure(
  kind: image,
  placement: bottom,
  supplement: "FIG",
  image("Mottmetal.svg", width:100%),
  caption: [In [@mukherjee2025], we define a lattice-embedded impurity model (guided by phenomenology) and obtain its low-energy phases (top row) using an impurity solver. Using manybody translation operators and Bloch's theorem, we map the phases of the impurity model to those of a lattice model (bottom row).],
)<Fig1>

In order to better understand the solution obtained from DMFT, we proposed [@Mukherjee2023] an *extended Anderson impurity model* that captures the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron. Using this model, we demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction bath as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.
],
[
== The Mott transition on the 2D square lattice
We then addressed the case of two dimensions that is relevant to the *copper-oxide and heavy-fermion materials*. The anomalous pseudogap phase (with partial Fermi surface gapping) remains ill-understood, particularly in terms of its microscopic origin, connection to Mott and superconducting phases, and the effect of Greens function zeros on the nature of gapless excitations.

In [@mukherjee2025], we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice and "periodised" our impurity model using manybody translation operators to make contact with an *extended Hubbard model* (see #ref(<Fig1>)). We showed that the transition from a Fermi liquid to a symmetry-preserved Mott insulator goes through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement (see #ref(<Fig1>)). Such a phase is an example of *quantum matter* whose transition is characterised not by any local order parameter but by changes in topological invariants.

== Future Directions
- One obvious extension of this work is to study the effect of *doping* the impurity site; this has the possibility of allowing the charge fluctuations to proliferate and lead to other instabilities apart from the Mott transition.

- Another major application of this approach is to the *heavy-fermion materials*. Studying the periodic Anderson model might reveal insights on the Kondo breakdown scenario of metal-insulator transition with the PAM.

]
)

= Engineering non-Fermi liquids through critical phases in impurity models [@Mukherjee2022 - @Aashish2024]
#block(height: 34em,
columns(2, [
Another aspect of my work that is closely allied with the previous theme is the study of non-Fermi liquid phases emerging from quantum impurity models. This is relevant because non-Fermi liquids often arise in correlated materials, particularly in the proximity of quantum phase transitions. This makes characterisation of such non-Fermi liquids crucial.

== Fermi liquid vs intermediate-coupling non-Fermi liquid
In [@Mukherjee2022], we investigated the *single-channel Kondo model* to study the nature of correlations (qualitative as well as quantitative) generated among the conduction electrons as a result of the screening process. We demonstrated the presence of one-particle as well as *two-particle correlations* (in both the spin and charge channels) within the Kondo cloud; we also calculated how these correlations and some *entanglement measures* grew in strength during the crossover from local moment physics at high energies to the screened singlet state at low energies. This work set the stage for exploring breakdown of such strong-coupling behaviour in other models.

We next turned our focus to the *multichannel Kondo problem*, which is known to host non-Fermi liquid excitations when the coupling strength for the two channels are equal. By analysing the problem through a stripped down model - the star graph (with each conduction bath channel reduced to a single degree of freedom) - we shed light on the role played by the *ground state degeneracy* in the non-Fermi liquid physics - how it leads to an orthogonality catastrophe in the low-energy excitations and how it modified the various correlations into anomalous forms [@Patra_2023]. This work also emphasized the importance of using *simpler models* (the star graph in this case) to capture the essential physics.

== Quantum critical lattice models
It was recently shown (Phys. Rev. B 93 155136 (2016), Phys. Rev. B 107 205104 (2023)) that a three-orbital lattice model consisting of an $f-$layer hybridising with two independent layers of itinerant electrons hosts a line of continuous Mott transition. We  wanted to further investigate this exotic critical point through an effective impurity model. 
We were able to show ([@Aashish2024]) that a single $f-$impurity hybridising with two independent conduction baths leads to similar quantum critical phases with non-Fermi liquid excitations and pseudogapped spectral functions. This is in contrast to the isolated critical points that appear in other impurity models and that require fine-tuning of parameters.
#colbreak()

== Future Directions

- We are presently investigating a variety of impurity models to construct a *overarching theory for partially-screened models* and the associated low-energy signatures, using several diagnostics.

- It will be interesting to see whether other mechanisms for Kondo breakdown, such as the application of a *magnetic field* on the impurity spin or introducing frustration through additional impurity spins can lead to similar departures from Fermi liquid theory.

]))

= Bulk-boundary correspondence via entanglement renormalisation in free fermions [@Mukherjee2024]
#grid(
  columns: (1.2fr, 1fr),
  [The work in [@Mukherjee2024] differs somewhat from the others in the sense that it involves non-interacting electrons, but it speaks to the broader theme of emergence and topological transitions in fermionic systems. The holographic principle (and more specifically the AdS-CFT correspondence) have become popular tools for investigating strongly-coupled quantum systems using their semiclassical gravity duals. Conversely, the holographic principle also implies that studying the boundary conformal theory can provide insights into the nature of the bulk quantum gravity theory. This requires constructing the emergent dimension from first principles by investigating the RG flow of the (often strongly coupled) quantum field theory, and has proven considerably more difficult. 

  In [@Mukherjee2024], we provide such a construction by showing how the entanglement renormalisation in a free fermion system (with and without a mass gap) leads to the emergence of a holographic dimension. Tuning the system from a gapless phase into a gap leads to a change in curvature of the emergent space; we argue that this topological transition (and the underlying critical Fermi surface at this transition) coincides with the formation of a quantum wormhole geometry that connects the UV and the IR of the emergent dimension.

  == Future Directions
  - It should be interesting to check how the entanglement scaling plays out for Lifshitz fermions $E\(k\) prop k^alpha$, $alpha > 1$.
  - The effect of correlation can be better modelled through a perturbative interaction or by using an exactly solvable model such as the Hatsugai-Kohmoto model and studying how it affects properties of the holographic dimension.
],
  gutter: 2em,
  figure(
    kind: image,
    placement: bottom,
    supplement: "FIG",
    image("wormhole.svg", width:80%),
    caption: [In [@Mukherjee2024], we show that entanglement renormalisation (under scaling transformations) in a 2D system of free electrons leads to the emergence of a holographic dimension. The figure depicts the geometries of the emergent dimension in the cases of gapless (top) and gapped (bottom) RG flows. While the gapless RG flow involves a growth in the entanglement between the UV and IR spaces, the latter leads to the vanishing of UV-IR entanglement. This results in the emergence of connected and disconnected geometries, respectively.],
  )
)

= Revealing magnetic dimensional crossover in CrSiTe$#sub[3]$ through picosecond strain pulses [@Anjan2025]
#block(height: 22em,
columns(2,
[
A recurring theme in my work has been to use simple theoretical models to interpret emergent experimental signatures of correlated matter. In this spirit, I recently collaborated [@Anjan2025] with Prof. N Kamaraju's group  on a project investigating the two-step *magnetic dimensional crossover* (paramagnet -> long-range fluctuations -> 3D ferromagnet) in the van der Waals ferromagnet CrSiTe$#sub[3]$. While the effect of the spin fluctuations on optical phonons during the crossover was known, a clear detection of the two step process continues to be challenge. We carry out such a detection by studying a bulk sample of CrSiTe$#sub[3]$ with ultra-fast pulses using *pump-probe spectroscopy* and tracking the acoustic strain pulse generated during relaxation of the carriers.

The shape of the acoustic pulses tracks the various steps of the magnetic crossover through several signatures, such as a phase reversal of the strain pulse in the ferromagnetic phase, a red-shift (softening) of the high-frequency phonons and a gapping out of the low-frequency phonon modes within the strain pulse. In order to explain these signatures, I (along with Prof. S Lal) came up with a simple model of *phonons interacting with the lattice spin fluctuations*. By treating the spin interactions using mean-field theory, we showed that the interacting model can be understood as a theory of new phonon fields with a modified dispersion. 

More specifically, we show that spin interactions *modify the phonon amplitude* in a way that explains the phase inversion observed in the ferromagnetic phase. Moreover, the modified dispersion relation exhibits two kinds of behaviour, depending on the nature of the spin-phonon interaction. The absence of coupling between the local phonon density and the spin-fluctuations in certain modes leads to a reduction of the spring constant of the phonon dispersion; we interpret this as the softening of the HFAP. The presence of this coupling in other modes *generates a mass term* in the dispersion; this corresponds to the gapping of the LFAP. In summary, our simple model appears to capture much of the experimental data using a simple mean-field treatment.
]
))

= Long-term goals

- *Developing a unifying framework for fermionic criticality*. Developing an overaching theory of interacting electrons in that explains the mechanism of phase transitions in many of these systems (such as cuprates, heavy fermion materials, iron-based superconductors, etc), and also accounting for the exotic parent phases which turn critical during such transitions. Our work on the Mott metal ([@mukherjee2025]) is a step in this direction.

- *Topology and entanglement as probes for transitions in strongly correlated electrons*. It is becoming increasingly clear that topological invariants and entanglement measures are better diagnostics to describe quantum phase transitions in strongly interacting electrons, compared to local order parameters. It would be interesting to make these ideas more precise and identify concrete topological order parameters for the phase transitions and characterise phases of quantum matter using patterns of entanglement. There are already hints of this in the literature (#link("https://iopscience.iop.org/article/10.1088/1367-2630/ab890e")[New J. Phys. 22 063011 (2020)], #link("https://arxiv.org/abs/2506.04342")[arXiv:2506.04342 (2025)], [@mukherjee2025]).

= References
#let papers = yaml("papers.yml")
#let sequence = ("Mukherjee2023", "mukherjee2025", "Mukherjee2022", "Patra_2023", "Aashish2024", "Mukherjee2024", "Anjan2025")
#columns(2, [
#for (count, k) in sequence.enumerate() [
  #if calc.rem(sequence.len(), 2) == 0 and count == sequence.len()/2 + 1 {
    colbreak()
  }
  #if calc.rem(sequence.len(), 2) == 1 and count == sequence.len()/2 + 0.5 {
    colbreak()
  }
  #let v = papers.at(k)
  #figure(
    kind: raw, 
    supplement: none,
    numbering: n => [#h(1pt)#text(fill: colAcc, weight: "bold", [#n])#h(1pt)],
    grid(
      columns: (10pt, 1fr),
      align: left+top,
      [#(count+1).~],
      [#authorise(v.author).~ #eval(v.title, mode:"markup")\.~~#text(fill: colAcc, weight: "semibold", if v.keys().contains("url"){link(v.url)[#v.display]} else {[#v.display]}) (#v.date)]
    )
  )#label(k)
]
])
