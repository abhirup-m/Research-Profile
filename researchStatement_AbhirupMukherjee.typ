#import "settings.typ": *

#show: style.with(
)

#cvTitle(details.name, "Research Statement")
#v(-1.5em)
#header(details)
#line(length: 100%)

#columns( 
  2,
  [I am a quantum condensed matter theorist focusing primarily on characterising phases of strongly correlated *quantum matter* - novel states that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. Such phases are interesting because they cannot be organised according to the paradigm of spontaneous symmetry breaking and local order parameters. Instead, phase transitions involving such phases often involve changes in *topology*. #colbreak()

  My work presently focuses on understanding various features of Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture and understand crucial features of Mott transitions.
])

= Kondo breakdown as route to understanding Mott transitions [@Mukherjee2023, @mukherjee2025]

#columns(
  2,
  [== Mott transition on Bethe lattice: $d=infinity$

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. While DMFT obtains a self-consistent solution of the *Mott MIT* for the $1\/2-$filled Hubbard model in infinite dimensions, important questions such as the precise nature of the impurity model and the nature of quantum critical metal at the transition remain controversial.

#figure(
  kind: image,
  placement: bottom,
  supplement: "FIG",
  image("Mottmetal.svg", width:100%),
  caption: [In [@mukherjee2025], we define a lattice-embedded impurity model (guided by phenomenology) and obtain its low-energy phases (top row) using an impurity solver. Using manybody translation operators and Bloch's theorem, we map the phases of the impurity model to those of a lattice model (bottom row).],
)<Fig1>

#colbreak()
In order to address this, we proposed [@Mukherjee2023] an *extended Anderson impurity model* that captures the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron. Using this model, we demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction bath as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.

== Mott transition in 2D
We then applied our approach to the case of two dimensions, in order to address some of the open questions pertaining to the mysterious pseudogap and non-Fermi liquid phases that arise in the *copper-oxide and heavy-fermion materials*. In [@mukherjee2025], we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice and "periodised" our impurity model using manybody translation operators to make contact with an *extended Hubbard model* (see #ref(<Fig1>)). We showed that the transition from a Fermi liquid to a symmetry-preserved Mott insulator goes through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement (see #ref(<Fig1>)).

]
)

= Engineering non-Fermi liquids from critical impurity models [@Mukherjee2022 - @Aashish2024]
#columns(2, [
Another aspect of my work that is closely allied with the previous theme is the study of non-Fermi liquid phases emerging from quantum impurity models. This is relevant because non-Fermi liquids often arise in correlated materials, particularly in the proximity of quantum phase transitions. This makes characterisation of such non-Fermi liquids crucial.

== Emergence of non-Fermi liquids
In [@Mukherjee2022], we investigated the *single-channel Kondo model* and demonstrated the presence of *two-particle correlations* and entanglement within the Kondo cloud in the form of an effective Hamiltonian; we also calculated how they evolved during the high to low-temperature crossover. This work set the stage for exploring breakdown of such strong-coupling behaviour in other models.

We next turned our focus to the *multichannel Kondo problem* that displays breakdown of Kondo screening, and shed light on the role played by the *ground state degeneracy* in the non-Fermi liquid physics - how it leads to an orthogonality catastrophe in the low-energy excitations and how it modified the various correlations into anomalous forms [@Patra_2023]. This work also emphasized the importance of using *simpler models* (the star graph in this case) to capture the essential physics.

#colbreak()
== Quantum critical lattice models
We next wanted to use our approach to investigate the *exotic critical point* demonstrated in some recent works (Phys. Rev. B 93 155136 (2016), Phys. Rev. B 107 205104 (2023)) within a three-orbital lattice model. We have showed ([@Aashish2024]) that a single $f-$impurity hybridising with two independent conduction baths leads (@Fig2) to similar quantum critical phases with non-Fermi liquid excitations and pseudogapped spectral functions. This is in contrast to the isolated critical points that appear in other impurity models and that require fine-tuning of parameters.

#figure(
    kind: image,
    placement: top,
    supplement: "FIG",
    scope: "parent",
    grid(
      columns: (auto, auto),
      gutter: 2em,
      align: horizon,
      image("threeOrbital.svg", width:100%),
      [FIG 2: In [@Aashish2024], we have studied an impurity model analogue of a three-layer periodic Anderson model, where the impurity site represents the $f-$layer hybridising with the two conduction bath layers. We find signatures of a quantum critical phase displaying non-Fermi liquid excitations and long-range entanglement. This gives insight into the continuous transition obtained in the full three-layer model from DMFT calculations.]
    )
)<Fig2>

])

= Bulk-boundary correspondence \& entanglement renormalisation [@Mukherjee2024]
#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [The work in [@Mukherjee2024] differs somewhat from the others in the sense that it involves non-interacting electrons, but it speaks to the broader theme of emergence and *topological transitions* in fermionic systems. Specifically, this work involves a demonstration of the holographic principle by constructing the emergent dimension from the quantum field theory, which is typically more difficult than the top-down approach of studying strongly-coupled quantum theories by mapping them to their semiclassical gravity duals. 

  In [@Mukherjee2024], we provide such a construction by showing how the *entanglement renormalisation* in a free fermion system (with and without a mass gap) leads to the emergence of a holographic dimension. Tuning the system from a gapless phase into a gap leads to a change in curvature of the emergent space; we argue that this topological transition (and the underlying critical Fermi surface at this transition) coincides with the formation of a *quantum wormhole geometry* that connects the UV and the IR of the emergent dimension (@Fig3).

],
  [#figure(
    kind: image,
    placement: bottom,
    supplement: "FIG",
    image("wormhole.svg", width:80%),
    caption: [In [@Mukherjee2024], we show that entanglement renormalisation in a 2D system of free electrons leads to the emergence of a holographic dimension. While the gapless RG flow involves a growth in the entanglement between the UV and IR spaces, the latter leads to the vanishing of UV-IR entanglement. This results in the emergence of connected (left) and disconnected (right) geometries, respectively.],
  )<Fig3>]
)

= Magnetic dimensional crossover in CrSiTe$#sub[3]$ [@Anjan2025]
#block(height: 17em,
columns(2,
[
A recurring theme in my work has been to use simple theoretical models to interpret emergent experimental signatures of correlated matter. In this spirit, I recently collaborated [@Anjan2025] with Prof. N Kamaraju's experimental group  on a project investigating the two-step *magnetic dimensional crossover* (paramagnet -> long-range fluctuations -> 3D ferromagnet) in the van der Waals ferromagnet CrSiTe$#sub[3]$. The experimental involves mapping out the two-stpe crossover by studying a bulk sample of CrSiTe$#sub[3]$ with ultra-fast pulses using *pump-probe spectroscopy* and tracking the acoustic strain pulse generated during relaxation of the carriers.

The shape of the acoustic pulses tracks the various steps of the magnetic crossover through several signatures, such as a phase reversal of the strain pulse in the ferromagnetic phase, a red-shift (softening) of the high-frequency phonons and a gapping out of the low-frequency phonon modes within the strain pulse. In order to explain these signatures, I (along with Prof. S Lal) came up with a simple model of *phonons interacting with the lattice spin fluctuations*. By treating the spin interactions using mean-field theory, we showed that the interacting model can be understood as a theory of new phonon fields with a modified dispersion. More specifically, we showed that the renormalisation of the phonon characteristics due to its interaction with the spin-fluctuations explains the various features mentioned above.
]
))

= Short-term future directions

#columns(2,
[
- Our work on the Mott transition has some obvious possible extensions. These include studying the effect of doping the impurity site, as well as appying our approach to the heavy-fermion materials.

- In terms of investigating non-Fermi liquid physics arising from Kondo breakdown, we are presently investigating a variety of impurity models to construct a *overarching theory for partially-screened models* and the associated low-energy signatures, using several diagnostics.
#colbreak()

- With regards to the entanglement renormalisation aspect, it should be interesting to check how the entanglement scaling plays out for Lifshitz fermions $E\(k\) prop k^alpha$, $alpha > 1$. Once can also try to model the effects of electronic correlation perturbatively or by using an exactly solvable model such as the Hatsugai-Kohmoto model and studying how it affects properties of the holographic dimension.
])


= Long-term research goals

#columns(2,
[
- *Developing a unifying framework for fermionic criticality*. Developing an overaching theory of interacting electrons in that explains the mechanism of phase transitions in many of these systems (such as cuprates, heavy fermion materials, iron-based superconductors, etc), and also accounting for the exotic parent phases which turn critical during such transitions. Our work on the Mott metal ([@mukherjee2025]) is a step in this direction.
#colbreak()

- *Topology and entanglement as probes for transitions in strongly correlated electrons*, instead of local order parameters. It would be interesting to make these ideas more precise and identify concrete topological order parameters for the phase transitions and characterise phases of quantum matter using patterns of entanglement. There are already hints of this in the literature (#link("https://iopscience.iop.org/article/10.1088/1367-2630/ab890e")[New J. Phys. 22 063011 (2020)], #link("https://arxiv.org/abs/2506.04342")[arXiv:2506.04342 (2025)], [@mukherjee2025]).
])

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
