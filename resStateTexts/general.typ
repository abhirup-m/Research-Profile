#import "@preview/physica:0.9.7": *
#import "../src/settings.typ": *
#let sequence = ("Mukherjee2023", "mukherjee2025", "Mukherjee2022", "Patra_2023", "Aashish2024", "Mukherjee2024", "Anjan2025")

#balance(columns( 2,[
  I am a quantum condensed matter theorist focusing primarily on characterising phases of strongly correlated *quantum matter* - novel states that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. Such phases are interesting because they cannot be organised according to the paradigm of spontaneous symmetry breaking and local order parameters. Instead, phase transitions involving such phases often involve changes in *topology*.

My work presently focuses on understanding various features of Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. *Key themes of my research include: (i) quantum criticality via quantum mechanical frustration of Kondo effect, (ii) changes in Fermi surface topology, (iii) entanglement-driven transition, and (iv) boundary condition sensitivity and spectral flow*. In the rest of the introduction, I describe these aspects of my research at a high level; they are explained in more detail in the later sections. I have also added a section towards the end on the #link(<software>)[Software and Algorithmic Development] that I have been a part of during my PhD.

The *Kondo effect* refers to the low-energy hybridisation of a magnetic impurity with a non-interacting band of electrons, resulting in the successful screening of the impurity and the emergence of a non-magnetic singlet state and low-energy gapless excitations on the impurity. Through *auxiliary model methods* that map the local physics of a lattice model onto the dynamics of an impurity model, a successful Kondo screening is equivalent to the physics of Landau Fermi liquids. This is where my work comes in: by extending the impurity model with competing tendencies, we *frustrate the Kondo screening process* and this leads to novel phases such as Mott insulators and non-Fermi liquids. 

By incorporating the effects of the lattice, we have also successfully captured correlation-driven *Lifshitz transitions*--phase transition involving changes in Fermi surface topology. In many of our works, we characterise various phases and the intervening transitions through *entanglement patterns*; different phases display differing range and multipartiteness of entanglement measures. Such approaches become particularly important in the absence of any local order parameter. This also ties into the fourth theme I mentioned above -- sensitivity to boundary conditions. Indeed, in one of my works, we show how a certain function of the entanglement in a metal can be used to calculate the Luttinger's volume of the system--the number of extended states available for *spectral flow*. This leverages the fact that the eigenstates of a metal can sense the boundaries of the system.
]))

= Kondo breakdown as route to understanding Mott transitions [@Mukherjee2023, @mukherjee2025]

#balance(columns(2, [
  == Mott transition on Bethe lattice: $d=infinity$

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. While DMFT obtains a self-consistent solution of the *Mott MIT* for the $1\/2-$filled Hubbard model in infinite dimensions, important questions such as the precise nature of the impurity model and the nature of quantum critical metal at the transition remain controversial.

#figure(
  kind: image,
  placement: bottom,
  supplement: "FIG",
  image("../figures/Mottmetal.svg", width:100%),
  caption: [In [@mukherjee2025], we define a lattice-embedded impurity model (guided by phenomenology) and obtain its low-energy phases (top row) using an impurity solver. Using manybody translation operators and Bloch's theorem, we map the phases of the impurity model to those of a lattice model (bottom row).],
)<Fig1>

In order to address this, we proposed [@Mukherjee2023] an *extended Anderson impurity model* that captures the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron. Using this model, we demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction bath as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.

== Mott transition in 2D
We then applied our approach to the case of two dimensions, in order to address some of the open questions pertaining to the mysterious pseudogap and non-Fermi liquid phases that arise in the *copper-oxide and heavy-fermion materials*. In [@mukherjee2025], we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice and "periodised" our impurity model using manybody translation operators to make contact with an *extended Hubbard model* (see #ref(<Fig1>)). We showed that the transition from a Fermi liquid to a symmetry-preserved Mott insulator goes through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement (see #ref(<Fig1>)).

]))

= Engineering non-Fermi liquids from critical impurity models [@Mukherjee2022 - @Aashish2024]
#balance(columns(2, [
Another aspect of my work that is closely allied with the previous theme is the study of non-Fermi liquid phases emerging from quantum impurity models. This is relevant because non-Fermi liquids often arise in correlated materials, particularly in the proximity of quantum phase transitions. This makes characterisation of such non-Fermi liquids crucial.

== Emergence of non-Fermi liquids
In [@Mukherjee2022], we investigated the *single-channel Kondo model* and demonstrated the presence of *two-particle correlations* and entanglement within the Kondo cloud in the form of an effective Hamiltonian; we also calculated how they evolved during the high to low-temperature crossover. This work set the stage for exploring breakdown of such strong-coupling behaviour in other models.

We next turned our focus to the *multichannel Kondo problem* that displays breakdown of Kondo screening, and shed light on the role played by the *ground state degeneracy* in the non-Fermi liquid physics - how it leads to an orthogonality catastrophe in the low-energy excitations and how it modified the various correlations into anomalous forms [@Patra_2023]. This work also emphasized the importance of using *simpler models* (the star graph in this case) to capture the essential physics.

== Quantum critical lattice models
We next wanted to use our approach to investigate the *exotic critical point* demonstrated in some recent works (Phys. Rev. B 93 155136 (2016), Phys. Rev. B 107 205104 (2023)) within a three-orbital lattice model. We have showed ([@Aashish2024]) that a single $f-$impurity hybridising with two independent conduction baths leads (@Fig2) to similar quantum critical phases with non-Fermi liquid excitations and pseudogapped spectral functions. This is in contrast to the isolated critical points that appear in other impurity models and that require fine-tuning of parameters.

#figure(
    kind: image,
    placement: top,
    supplement: "FIG",
    image("../figures/threeOrbital.svg", width:100%),
    caption: [FIG 2: In [@Aashish2024], we have studied an impurity model analogue of a three-layer periodic Anderson model, where the impurity site represents the $f-$layer hybridising with the two conduction bath layers. We find signatures of a quantum critical phase displaying non-Fermi liquid excitations and long-range entanglement. This gives insight into the continuous transition obtained in the full three-layer model from DMFT calculations.]
)<Fig2>

]))

= Magnetic dimensional crossover in CrSiTe$#sub[3]$ [@Anjan2025]
#balance(columns(2,[
A recurring theme in my work has been to use simple theoretical models to interpret emergent experimental signatures of correlated matter. In this spirit, I recently collaborated [@Anjan2025] with Prof. N Kamaraju's experimental group  on a project investigating the two-step *magnetic dimensional crossover* (paramagnet -> long-range fluctuations -> 3D ferromagnet) in the van der Waals ferromagnet CrSiTe$#sub[3]$. The experimental involves mapping out the two-stpe crossover by studying a bulk sample of CrSiTe$#sub[3]$ with ultra-fast pulses using *pump-probe spectroscopy* and tracking the acoustic strain pulse generated during relaxation of the carriers.

The shape of the acoustic pulses tracks the various steps of the magnetic crossover through several signatures, such as a phase reversal of the strain pulse in the ferromagnetic phase, a red-shift (softening) of the high-frequency phonons and a gapping out of the low-frequency phonon modes within the strain pulse. In order to explain these signatures, I (along with Prof. S Lal) came up with a simple model of *phonons interacting with the lattice spin fluctuations*. By treating the spin interactions using mean-field theory, we showed that the interacting model can be understood as a theory of new phonon fields with a modified dispersion. More specifically, we showed that the renormalisation of the phonon characteristics due to its interaction with the spin-fluctuations explains the various features mentioned above.
]))

= Bulk-boundary correspondence \& entanglement renormalisation [@Mukherjee2024]
#balance(columns(2, [
  The work in [@Mukherjee2024] differs somewhat from the others in the sense that it involves non-interacting electrons, but it speaks to the broader theme of emergence and *topological transitions* in fermionic systems. Specifically, this work involves a demonstration of the holographic principle by constructing the emergent dimension from the quantum field theory, which is typically more difficult than the top-down approach of studying strongly-coupled quantum theories by mapping them to their semiclassical gravity duals. 

  In [@Mukherjee2024], we provide such a construction by showing how the *entanglement renormalisation* in a free fermion system (with and without a mass gap) leads to the emergence of a holographic dimension. Tuning the system from a gapless phase into a gap leads to a change in curvature of the emergent space; we argue that this topological transition (and the underlying critical Fermi surface at this transition) coincides with the formation of a *quantum wormhole geometry* that connects the UV and the IR of the emergent dimension (@Fig3).

  #figure(
    kind: image,
    placement: bottom,
    supplement: "FIG",
    image("../figures/wormhole.svg", width:80%),
    caption: [In [@Mukherjee2024], we show that entanglement renormalisation in a 2D system of free electrons leads to the emergence of a holographic dimension. While the gapless RG flow involves a growth in the entanglement between the UV and IR spaces, the latter leads to the vanishing of UV-IR entanglement. This results in the emergence of connected (left) and disconnected (right) geometries, respectively.],
  )<Fig3>
]))


= Software and Algorithmic Development<software>

- *Created a Julia package for working with interacting fermionic models*: In order to optimise my workflow of working with manybody fermionic systems, I developed and published the Julia package #link("https://github.com/abhirup-m/fermions.jl")[_Fermions_]. _Fermions_ is a Julia toolkit designed for the symbolic creation and analysis of second-quantised Hamiltonians and operators for electronic systems, particularly those involving interacting fermions. It was developed to abstract away the complex task of manually constructing large matrices for many-body Hamiltonians and correlation functions, allowing users to define operators and Hamiltonians using simple, predefined symbols. Almost all my projects (publications as well as preprints) have used _Fermions_.

- *Designed an iterative diagonalisation approach for supplement our unitary renormalisation group approach*: In order to study the low-energy theories obtained from our unitary renormalisation group analysis of various impurity models, I designed an iterative diagonalisation algorithm that, in a rough sense, weds NRG with DMRG: it gradually grows the system by expanding the conduction bath that's hybridising with the impurity site, retaining a fixed number of low-energy states at each step.

- *Calculation of reduced density matrices from expectation values*: The above method of iteratively diagonalising impurity model Hamiltonians makes it difficult to selectively trace out local degrees of freedom; this is because the truncation between low and high energy states requires operators to be rotated into the energy eigenbasis which entangles the local degrees of freedom. As a result, I came up with the following alternative approach to calculate reduced density matrices (RDMs): we express matrix elements of the RDM as expectation values of various transition operators (for eg.,  $braket(1, rho_(12), 2) = c^dagger_1 c_2$); since it is very easy to obtain these operators and states in their rotated form, the RDM can then be constructed by calculating the expectation values in this rotated basis.

= Research Interests

As is clear from the preceding sections, my primary research interest lies in understanding Mott transitions and correlation-driven metal–insulator transitions in low-dimensional quantum materials, particularly through the lens of Kondo breakdown. Specific aspects of my interest include emergent non-Fermi liquid phases, orbital/band-selective transitions, and Fermi surface topology changes, in the context of various materials and models. Other topics that I am interested in and look forward to working on in the future include high-$T_c$ superconductivity and various topological phases.

Below I list general ideas for potential projects. _These projects are intended as indicative examples of my research interests, and I anticipate refining or expanding them in close interaction with anyone interested, provided they align with my broader scientific interests mentioned above_.
#balance(
  columns(2, [
*Extending our work on lattice Mott MIT work*. Having obtained exciting results on the 2D Mott MIT (in the form of a momentum-anisotropic Mott metal phase, [@mukherjee2025]), I am interested in extending this to the case of non-zero doping. This should unlock several new possibilities such as superconducting instabilities. Another avenue for extendin this is to tackle the problem of heavy-fermions and study the Fermi surface reconstruction transition in such materials from the lens of Kondo breakdown.

*Overarching theory for Kondo-frustrated non-Fermi liquids*. In terms of investigating non-Fermi liquid physics arising from Kondo breakdown, we are presently studying a variety of impurity models to construct a unified theory of the low-energy signatures, using several diagnostics. These signatures include real-space entanglement measures, degree of compensation, etc.

*Holographic lifshitz theories*. With regards to my entanglement renormalisation work (where we showed that scaling transformations in a non-interacting 2D Dirac theory can be visualised as the emergence of a holographic dimension, [@Mukherjee2024]), it should be interesting to check how the entanglement scaling plays out for Lifshitz fermions $E\(k\) prop k^alpha$, $alpha > 1$.

*Many-body scars in an exactly solvable model*. Having invesigated some apects of eigenstate thermalisation in one my current projecs, I am interested in studying similar ideas in the Hatsugai-Kohmoyo model $H_"KM"$, an exactly solvable model of correlated electrons, displaying non-Fermi liquid excitations. For example, it might be worth investigating whether a perturbatively non-integrable model (such as $H = H_"KM" + P_nu H_"Hub" P_nu$, where $H_"Hub"$ is the Hubbard model and $P_nu$ projects onto some symmetry sectors) can host many-body scars (through an approximate integrability left over from $H_"KM"$). The entanglement structure of the states in such a model should also be interesting to explore.
 
*Effect of correlated impurities on dynamics of integrable systems*. Continuing with the theme of thermalisation, I am interested in studying the effect of correlated impurities on the revival of ergodicity in integrable models. More specifically, one can consider quantum impurity models with varying geometries (which are known to host non-Fermi liquid excitations), and study the dependence of thermalisation on the nature of excitations.

*Studying effect of electronic correlations in MATBG through a bilayer impurity model*. One of the ongoing directions of research in the field of magic-angle TBG is via the topological heavy-fermions approach put forward by Prof. Bernevig (among others). Given my experience with correlated quantum impurity models, it may be fruitful to look at an impurity model analogue of such a THF model by allowing a Kondo impurity to hybridise with a topologically non-trivial conduction bath. This can allow us to study various interesting phases within a simplified paradigm.

*Studying effect of electronic correlations in MATBG through an exactly solvable model*. As mentioned in a previous point, the Hatsugai-Kohmoto model is an exactly solvable model of correlated electrons, displaying non-Fermi liquid and Mott insulating phases. This therefore provides an interesting route to studying the emergence of novel phases in a correlated MATBG system. Instabilities towards non-BCS superconductivity can also be explored and compared against experiments.

*Exploring violation of Luttinger's theorem in heavy-fermion systems*. A growing body of recent literature suggests that violation of Luttinger's theorem (in non-Fermi liquids and Mott insulators) are a result of changes in the anomaly structure of the Fermi surface. One can investigate these claims particularly in the context of heavy-fermion systems to see if we can write down topological order parameters (derived from singularities in the Luttinger-Ward functional) that track phase transitions in such systems. One can also consider the question of correlating such anomalies to entanglement patterns.

*Fate of topological phases in the presence of interactions*. The Hatsugai-Kohmoto model is an exactly-solvable model of correlated electrons, and contains non-Fermi liquid and Mott insulating phases. It might be interesting to introduce such interactions within a model of topological insulator (such as the SSH model), and verify whether the topological features survive. The possiblity of obtaining analytical insights makes this project potentially very fruitful.
]))

= Long-term research goals

*Developing a unifying framework for fermionic criticality*. Developing an overaching theory of interacting electrons in that explains the mechanism of phase transitions in many of these systems (such as cuprates, heavy fermion materials, iron-based superconductors, etc), and also accounting for the exotic parent phases which turn critical during such transitions. Our work on the Mott metal ([@mukherjee2025]) is a step in this direction.

*Topology and entanglement as probes for transitions in strongly correlated electrons*, instead of local order parameters. It would be interesting to make these ideas more precise and identify concrete topological order parameters for the phase transitions and characterise phases of quantum matter using patterns of entanglement. There are already hints of this in the literature (#link("https://iopscience.iop.org/article/10.1088/1367-2630/ab890e")[New J. Phys. 22 063011 (2020)], #link("https://arxiv.org/abs/2506.04342")[arXiv:2506.04342 (2025)], [@mukherjee2025]).
