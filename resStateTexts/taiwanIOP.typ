#import "../src/settings.typ": *
#let sequence = ("Mukherjee2023", "mukherjee2025", "Mukherjee2022", "Patra_2023", "Aashish2024", "Mukherjee2024", "Anjan2025")

#balance(columns( 2,[
  I am a quantum condensed matter theorist focusing primarily on characterising phases of strongly correlated *quantum matter* - novel states that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. My work presently focuses on understanding various features of Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture and understand crucial features of Mott transitions. In particular, I have worked on two-dimensional models of Mott transitions, and am keen on exploring other interesting *2D materials* such as magic-angle TBG and transition metal dichalcogenides (TMDs).
]))

= Kondo breakdown as route to understanding Mott transitions [@Mukherjee2023, @mukherjee2025]

#balance(columns(2, [

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. While DMFT obtains a self-consistent solution of the *Mott MIT* for the $1\/2-$filled Hubbard model in infinite dimensions, important questions such as the precise nature of the impurity model and the nature of quantum critical metal at the transition remain controversial.

In order to address this, we proposed [@Mukherjee2023] an *extended Anderson impurity model* that captures the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron. Using this model, we demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction bath as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.

We then applied our approach to the case of two dimensions, in order to address some of the open questions pertaining to the mysterious pseudogap and non-Fermi liquid phases that arise in the *copper-oxide and heavy-fermion materials*. In [@mukherjee2025], we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice and "periodised" our impurity model using manybody translation operators to make contact with an *extended Hubbard model*. We showed that the transition from a Fermi liquid to a symmetry-preserved Mott insulator goes through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement.

]))

= Engineering non-Fermi liquids from critical impurity models [@Mukherjee2022 - @Aashish2024]
#balance(columns(2, [
Another aspect of my work that is closely allied with the previous theme is the study of non-Fermi liquid phases emerging from quantum impurity models. This is relevant because non-Fermi liquids often arise in correlated materials, particularly in the proximity of quantum phase transitions. This makes characterisation of such non-Fermi liquids crucial.

In [@Mukherjee2022], we investigated the *single-channel Kondo model* and demonstrated the presence of *two-particle correlations* and entanglement within the Kondo cloud in the form of an effective Hamiltonian; we also calculated how they evolved during the high to low-temperature crossover. This work set the stage for exploring breakdown of such strong-coupling behaviour in other models.

We next turned our focus to the *multichannel Kondo problem* that displays breakdown of Kondo screening, and shed light on the role played by the *ground state degeneracy* in the non-Fermi liquid physics - how it leads to an orthogonality catastrophe in the low-energy excitations and how it modified the various correlations into anomalous forms [@Patra_2023]. This work also emphasized the importance of using *simpler models* (the star graph in this case) to capture the essential physics.

We next wanted to use our approach to investigate the *exotic critical point* demonstrated in some recent works (Phys. Rev. B 93 155136 (2016), Phys. Rev. B 107 205104 (2023)) within a three-orbital lattice model. We have showed ([@Aashish2024]) that a single $f-$impurity hybridising with two independent conduction baths leads to similar quantum critical phases with non-Fermi liquid excitations and pseudogapped spectral functions. This is in contrast to the isolated critical points that appear in other impurity models and that require fine-tuning of parameters.
]))

= Magnetic dimensional crossover in CrSiTe$#sub[3]$ [@Anjan2025]
#balance(columns(2,[
I recently collaborated [@Anjan2025] with Prof. N Kamaraju's experimental group  on a project investigating the two-step *magnetic dimensional crossover* (paramagnet -> long-range fluctuations -> 3D ferromagnet) in the van der Waals ferromagnet CrSiTe$#sub[3]$. The experimental involves mapping out the two-stpe crossover by studying a bulk sample of CrSiTe$#sub[3]$ with ultra-fast pulses using *pump-probe spectroscopy*. The generated acoustic strain pulse tracks the magnetic crossover through signatures like phase reversal and softening and gapping out of various phonon modes. In order to explain these signatures, I (along with Prof. S Lal) came up with a simple model of *phonons interacting with the lattice spin fluctuations*. By treating the spin interactions using mean-field theory, we showed that the renormalisation of the phonon characteristics due to its interaction with the spin-fluctuations explains the various features mentioned above.
]))

= Research Interests

As is clear from the preceding sections, my primary research interest lies in understanding Mott transitions and correlation-driven metal–insulator transitions in low-dimensional quantum materials, particularly through the lens of Kondo breakdown. Specific aspects of my interest include emergent non-Fermi liquid phases, orbital/band-selective transitions, and Fermi surface topology changes, in the context of various materials and models. Other topics that I am interested in and look forward to working on in the future include high-$T_c$ superconductivity and various topological phases.

Below I list more concrete ideas for potential projects.
#balance(
  columns(2, [


*Studying effect of electronic correlations in MATBG through an exactly solvable model*. The Hatsugai-Kohmoto model is an exactly solvable model of correlated electrons, displaying non-Fermi liquid and Mott insulating phases. This therefore provides an interesting route to studying the emergence of novel phases in a correlated MATBG system, with analytical clarity. Instabilities towards non-BCS superconductivity can also be explored and compared against experiments.

*Exploring violation of Luttinger's theorem in heavy-fermion systems*. A growing body of recent literature suggests that violation of Luttinger's theorem (in non-Fermi liquids and Mott insulators) are a result of changes in the anomaly structure of the Fermi surface. One can investigate these claims particularly in the context of heavy-fermion systems to see if we can write down topological order parameters (derived from singularities in the Luttinger-Ward functional) that track phase transitions in such systems. One can also consider the question of correlating such anomalies to entanglement patterns.

*Studying effect of electronic correlations in MATBG through a bilayer impurity model*. One of the ongoing directions of research in the field of magic-angle TBG is via the topological heavy-fermions approach put forward by Prof. Bernevig (among others). Given my experience with correlated quantum impurity models, it may be fruitful to look at an impurity model analogue of such a THF model by allowing a Kondo impurity to hybridise with a topologically non-trivial conduction bath. This can allow us to study various interesting phases within a simplified paradigm.
]))
