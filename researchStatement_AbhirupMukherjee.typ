#import "@preview/muchpdf:0.1.1":*
#set page(
  paper: "us-letter",
  margin: (top: 1.5cm, rest: 1.5cm),
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
#let fontMain = "Roboto Slab"

#let colMain = rgb("1F1F1F")
#let colName = rgb("#5E4B3C")
#let colSec = rgb("#002147")
#let colAcc = rgb("4B2E83")
#show emph: set text(font: "Lato", size:1.1em)

#set par(justify: true, first-line-indent: 2em)
#set text(font:fontMain, fill: colMain, size: 8pt)
#show heading: set text(fill: colSec, weight: "semibold", font: fontMain)
#show heading.where(level:1): set block(below: 1em)
#show math.equation: set text(font: "Fira Math")

#text(size: 2em, text(fill: colName, font: fontBig, weight: "semibold", [Abhirup Mukherjee]) + text(weight: "bold", [~~|~~]) + [*Research* Statement])

#columns(2, 
[
  I am a quantum condensed matter theorist focusing primarily on strongly correlated *quantum matter* - novel phases that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. Such phases are interesting because they cannot be organised according to the paradigm of spontaneous symmetry breaking and local order parameters. Instead, phase transitions involving such phases often involve changes in *topology*. This presents a challenge (and therefore opportunities) to extend the "standard model" of condensed matter physics to accomodate such exotic phases.
  #colbreak()

  My work presently focuses on understanding various features of Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture crucial features of Mott transitions, in $d=infinity$ (Bethe lattice) as well as on the $2D$ square lattice.
]
)

= Kondo breakdown as a route to understanding Mott transitions (@mukherjee2025, @Mukherjee2023)

#columns(2,[

#figure(
  kind: image,
  placement: bottom,
  scope: "parent",
  supplement: "FIG",
  grid(
    columns: (2.5fr, 1fr),
    gutter: 1em,
    align: (center + horizon),
    image("Mottmetal.svg", width:100%),
  [FIG 1. The tiling approach employed in @mukherjee2025. We start from a lattice-embedded impurity and obtain its low-energy phases (top row). We then reconstruct the lattice model using manybody translation operators; this also maps the low-energy properties of the lattice model to those of the impurity model. This leads to the Fermi liquid, Mott metal and Mott insulator phases deriving from the corresponding phases of the impurity model.],
)
)<Fig1>
== The Mott transition on the Bethe lattice in infinite dimensions

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. DMFT obtains an exact solution of the *Mott MIT* for the $1\/2-$filled Hubbard model on the Bethe lattice with infinite coordination number, in terms of a self-consistently determined Anderson impurity. This, however, precludes a deeper understanding of the *precise nature of the correlations* present in the conduction bath of the impurity model, leaving open questions such as: (i) Is there an effective quantum impurity model that describes the Mott MIT of the Hubbard model described above? (ii) What is the nature of the quantum critical metal precisely at the transition?

In order to model (phenomenologically) the lattice self-energy obtained from DMFT, we proposed @Mukherjee2023 an *extended Anderson impurity model* with additional local correlations within the conduction bath. We showed that this impurity model captured the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron, at a certain critical value of the bath interaction parameter (relative to the Kondo spin-exchange coupling strength). We demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.

== The Mott transition on 2D square lattice
We then wanted to tackle the more realistic problem of two dimensions, and address some of the unresolved questions in the context of the *copper oxide and heavy fermion materials*. The anomalous pseudogap phase observed in the cuprates exhibits partial gapping (due to Greens function zeros) of Fermi surface. Its microscopic origin, connection to Mott and superconducting phases, and the effect of Greens function zeros on the nature of gapless excitations remain ill-understood.

In a follow-up work (@mukherjee2025), we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice. In order to compute momentum-resolved correlations for a translationally-invariant lattice model, we "periodised" our impurity model using manybody translation operators; this reconstructs an *extended Hubbard model* from the "tiling" of the impurity models (see #ref(<Fig1>)). In particular, we showed (@mukherjee2025) that the transition from a Fermi liquid to a symmetry-preserved Mott insulator must go through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement (see #ref(<Fig1>)). Such a transition is beyond the Ginzburg-Landau-Wilson paradigm, and the Mott metal represents a phase of quantum matter whose transition is characterised not by any local order parameter but by changes in topological invariants.

== Future Directions
- One obvious extension of this work is to study the effect of *doping* the impurity site; this has the possibility of allowing the charge fluctuations to proliferate and lead to other instabilities apart from the Mott transition. We are presently working on this.

- Another major application of this approach is to the *heavy fermion materials*. Studying the periodic Anderson model might reveal insights on the Kondo breakdown scenario of metal-insulator transition with the PAM. We are presently working on this.

- A third avenue for future work is to investigate the effect of electronic correlations in *magic-angle twisted multi-layer graphene*.

]
)

= Engineering non-Fermi liquids through critical phases in impurity models (@Mukherjee2022, @Patra_2023)
#columns(2, [
Another aspect of my work that is closely allied with the previous theme is the study of non-Fermi liquid phases emerging from quantum impurity models. This is relevant because non-Fermi liquids often arise in correlated materials, particularly in the proximity of quantum phase transitions. This has made the characterisation of such non-Fermi liquids all the more crucial.

== Strong-coupling Fermi liquid vs intermediate-coupling non-Fermi liquid
To start things off, we studied (@Mukherjee2022) the *single-channel Kondo model* with antiferromagnetic Kondo coupling. While it was well-known that the model hosts local Fermi liquid excitations at low energies, not much was known about the nature of correlations (qualitative as well as quantitative) generated among the conduction electrons as a result of the screening process. We demonstrated the presence of one-particle as well as *two-particle correlations* (in both the spin and charge channels) within the Kondo cloud; we also calculated how these correlations and some *entanglement measures* became enhanced during the crossover from local moment physics at high energies to the screened singlet state at low energies. This work set the stage for exploring breakdown of such strong-coupling behaviour in other models.

We next turned our focus to the *multichannel Kondo problem*, which is known to host non-Fermi liquid excitations when the coupling strength for the two channels are equal. By analysing the problem through a stripped down model - the star graph (with each conduction bath channel reduced to a single degree of freedom) - we shed light on the role played by the *ground state degeneracy* in the non-Fermi liquid physics - how it leads to an orthogonality catastrophe in the low-energy excitations and how it modified the various correlations into anomalous forms @Patra_2023. This work also emphasized the importance of using *simpler models* (the star graph in this case) to capture the essential physics.

#colbreak()
== Quantum critical lattice models
It was recently shown (Phys. Rev. B 93 155136 (2016), Phys. Rev. B 107 205104 (2023)) that a three-orbital lattice model consisting of an $f-$layer hybridising with two independent layers of itinerant electrons hosts a line of continuous Mott transition. We  wanted to further investigate this by coming up with an effective impurity model that describes this phenomenology. We were able to show (@Aashish2024) that a single $f-$impurity hybridising with two independent conduction baths leads to quantum critical phases with non-Fermi liquid excitations. This is in contrast to the isolated critical points that appear in other impurity models and that require fine-tuning of parameters.

== Future Directions

- What is still missing is an overarching theory for partially-screened models and the associated low-energy signatures. In a follow-up project, we are investigating a variety of impurity models to construct a *systematic scheme for differentiating* strong-coupling scenarios from Kondo-breakdown scenarios using several diagnostics.

- It will also be interesting too see whether other mechanisms for Kondo breakdown, such as the application of a *magnetic field* on the impurity spin or introducing frustration by adding another impurity spin that competes with the conduction bath, can lead to non-Fermi liquid physics. 

])

= Bulk-boundary correspondence via entanglement renormalisation in free fermions
#lorem(100)

= References
#for (count, (k, v)) in yaml("papers.yml").pairs().enumerate() [
  #figure(
    kind: raw, 
    supplement: none,
    numbering: n => [\[#h(1pt)#text(fill: colAcc, weight: "bold", [#n])#h(1.5pt)\]],
    grid(
      columns: (10pt, 1fr),
      align: left+top,
      [#(count+1).~],
      [#authorise(v.author).~ #eval(v.title, mode:"markup")\.~~#text(fill: colAcc, weight: "semibold", if v.keys().contains("url"){link(v.url)[#v.display]} else {[#v.display]}) (#v.date)]
    )
  )#label(k)
]
