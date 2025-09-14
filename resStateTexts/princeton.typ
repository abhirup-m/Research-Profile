#import "../src/settings.typ": *

#let sequence = ("Mukherjee2023", "mukherjee2025", "Aashish2024", "Anjan2025")
#metadata("rs.pdf")<outfile>
#balance(
  columns(2, [I am a quantum condensed matter theorist focusing on characterising phases of strongly correlated *quantum matter*. My work presently focuses on understanding various features of repulsion-driven Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of magnetic screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture and understand crucial features of Mott transitions.

One of the most exciting insights that has emerged from this body of work is that in lattice models, correlation-driven transitions must involve an intervening quantum critical phase with long-range entanglement. We believe this hold true for Mott systems as well as heavy-fermion systems. This resonates well with the work of *Prof. Bogdan Bernevig* at Princeton. I believe this conceptual overlap opens exciting opportunities for fresh collaborative research in the field of heavy-fer
])
)

= From Kondo breakdown to non-Fermi liquids and Mott MIT [@Mukherjee2023 - @Aashish2024]

#balance(
columns(
  2,
  [== Mott transition on Bethe lattice: $d=infinity$

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. While DMFT obtains a self-consistent solution of the *Mott MIT* in infinite dimensions, important questions such as the precise nature of the impurity model and the nature of quantum critical metal at the transition remain controversial.

#figure(
  kind: image,
  placement: bottom,
  supplement: "FIG",
  image("../figures/Mottmetal.svg", width:100%),
  caption: [In [@mukherjee2025], we define a lattice-embedded impurity model and obtain its low-energy phases (top row) using an impurity solver. Using manybody translation operators and Bloch's theorem, we map the phases of the impurity model to those of a lattice model (bottom row).],
)<Fig1>

In order to address this, we proposed [@Mukherjee2023] an *extended Anderson impurity model* that captures the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron. Using this model, we demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction bath as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.

== Mott transition in 2D
We then applied our approach to the case of two dimensions, in order to address some of the open questions pertaining to the mysterious pseudogap and non-Fermi liquid phases that arise in the *copper-oxide and heavy-fermion materials*. In [@mukherjee2025], we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice and "periodised" our impurity model using manybody translation operators to make contact with an *extended Hubbard model* (see #ref(<Fig1>)). We showed that the transition from a Fermi liquid to a symmetry-preserved Mott insulator goes through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement (see #ref(<Fig1>)).

== Quantum critical lattice models
We have also studied the *exotic critical point* demonstrated in some recent works (Phys. Rev. B 93 155136 (2016), Phys. Rev. B 107 205104 (2023)) within a three-orbital lattice model. We have shown ([@Aashish2024]) that a single $f-$impurity hybridising with two independent conduction baths leads to similar quantum critical phases with non-Fermi liquid excitations and pseudogapped spectral functions. This is in contrast to the isolated critical points that appear in other impurity models and that require fine-tuning of parameters.
]))

#colbreak()
= Magnetic dimensional crossover in CrSiTe$#sub[3]$ [@Anjan2025]
#balance(
columns(2,
[
A recurring theme in my work has been to use simple theoretical models to interpret emergent experimental signatures of correlated matter. In this spirit, I recently collaborated [@Anjan2025] with Prof. N Kamaraju's experimental group  on a project investigating the two-step *magnetic dimensional crossover* (paramagnet -> long-range fluctuations -> 3D ferromagnet) in the van der Waals ferromagnet CrSiTe$#sub[3]$. The experiment involves mapping out the two-stpe crossover by studying a bulk sample of CrSiTe$#sub[3]$ with ultra-fast pulses using *pump-probe spectroscopy* and tracking the acoustic strain pulse generated during relaxation of the carriers.

The shape of the acoustic pulses tracks the various steps of the magnetic crossover through several signatures, such as a phase reversal of the strain pulse in the ferromagnetic phase, a red-shift (softening) of the high-frequency phonons and a gapping out of the low-frequency phonon modes within the strain pulse. To explain these signatures, I (along with Prof. S Lal) came up with a simple model of *phonons interacting with the lattice spin fluctuations*. By treating the spin interactions using mean-field theory, we showed that the renormalisation of the phonon characteristics due to its interaction with the spin-fluctuations explains the various features mentioned above.
]
))

= Future Research Directions

In addition to extending my current work on Mott physics and Kondo breakdown, I envision several near-term projects that overlap with ongoing research at Princeton, particularly with the work of *Prof. Bogdan Bernevig*.

#balance(
columns(2,
[*Studying effect of electronic correlations in MATBG through an exactly solvable model*. The Hatsugai-Kohmoto model is an exactly solvable model of correlated electrons, displaying non-Fermi liquid and Mott insulating phases. It should be interesting to see what kind of phases emerge in an MATBG system with such interactions. Instabilities towards non-BCS superconductivity can also be explored and compared against experiments.

*Exploring violation of Luttinger's theorem in heavy-fermion systems*. Recent work (arXiv:2506.04342) suggests that violation of Luttinger's theorem (in non-Fermi liquids and Mott insulators) are a result of changes in the anomaly structure of the Fermi surface. One can investigate these claims particularly in the context of heavy-fermion systems to see if we can write down topological order parameters (derived from singularities in the Luttinger-Ward functional, following arXiv:2506.04342) that track phase transitions in such systems.]
))

= Long-term Goals

#balance(
columns(2,
[*Developing a unifying framework for fermionic criticality*. Developing an overarching theory of interacting electrons that explains the mechanism of phase transitions in many of these systems (such as cuprates, heavy fermion materials, iron-based superconductors, etc), and also accounting for the exotic parent phases which turn critical during such transitions. Our work on the Mott metal ([@mukherjee2025]) is a step in this direction.

*Topology and entanglement as probes for transitions in strongly correlated electrons*, instead of local order parameters. It would be interesting to make these ideas more precise and identify concrete topological order parameters for the phase transitions and characterise phases of quantum matter using patterns of entanglement. There are already hints of this in the literature (#link("https://iopscience.iop.org/article/10.1088/1367-2630/ab890e")[New J. Phys. 22 063011 (2020)], #link("https://arxiv.org/abs/2506.04342")[arXiv:2506.04342 (2025)], [@mukherjee2025]).]
))
