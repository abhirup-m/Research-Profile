#import "@preview/physica:0.9.7": *
#import "../src/settings.typ": *
#let sequence = () //"Mukherjee2023", "mukherjee2025", "Mukherjee2022", "Patra_2023", "Aashish2024", "Mukherjee2024", "Anjan2025")

#balance(columns( 2,[
  I am a quantum condensed matter theorist focusing primarily on characterising phases of strongly correlated *quantum matter* - novel states that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. Such phases are interesting because they cannot be organised according to the paradigm of spontaneous symmetry breaking and local order parameters. Instead, phase transitions involving such phases often involve changes in *topology*.

More specifically, my research involves exploring various features of correlation-driven (Mott) metal-insulator transitions from the perspective of *Kondo breakdown* - the collapse of hybridisation between any given correlated lattice site and its surrounding environment, particularly when viewed as a quantum impurity model. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture and understand crucial features of Mott transitions.
]))

= Research Interests

- *Overarching theory for Kondo-frustrated non-Fermi liquids*: Given the mystery of the pseudogap and strange metal phases of the cuprates, I am very interested in investigating non-Fermi liquids arising from Kondo breakdown. This should shed light on the mechanism of quantum criticality that gives rise to such quantum liquids, as well as provide insights into how one can go about engineering such phases in materials.
- *Studying effect of electronic correlations in MATBG*: The observation of a plethora of "exotic" phases in magic-angle twisted bilayer graphene upon tuning the filling presents a very interesting and challenging problem. Having worked with similar phases in the context of other materials, this problem is of particular interest to me.
- *Developing new numerical methods for manybody problems*: Having worked on numerical computations for a large part of my PhD, I am interested in extending existing methods (such as DMRG or QMC-based methods) as well as coming up with new methods which can be applied to specific problems.

= Research Experience

== Mott Criticality as the Confinement Transition of a Pseudogap-Mott Metal
#balance(columns(2, [
The rich physics of *metal–insulator transitions* (MITs) in strongly correlated systems has been an active subject of study for quite some time. This is exemplified in some of the outstanding open questions pertaining to the mysterious pseudogap and non-Fermi liquid phases that arise in the *copper-oxide and heavy-fermion materials*. Existing approaches are either perturbative or limited in scope and do not offer clarity into the mechanism behind the emergence of such exotic phases. 

To address this problem, we have come up with an *auxiliary model* approach that maps a correlated lattice model to a (relatively) simpler quantum impurity model, using manybody translation operators. While this is philosophically similar to dynamical mean-field theory, the lack of a self-consistency requirement in our method makes it much *more transparent*. Other benefits of our approach involve enhanced $k-$space resolution and ease of computing correlations.

We show that the correct auxiliary model for describing electronic correlations in two dimensions  on a square lattice is realised by *embedding a correlated impurity site* in a non-interacting conduction lattice of conduction electrons. Through such a mapping, we demonstrate how a $k-$space anisotropic Kondo breakdown leads to the degradation of the Fermi liquid into a *pseudogap "Mott-metal" phase with Fermi arcs, holon-doublon delocalisation and long-range entaglement*. The Mott metal phase acts as a precursor to electron localisation, ultimately giving way to the Mott insulator. We believe this is the *first work* that shows the emergence of such a critical "noisy metal" phase from a lattice model, and simulating such a model at finite temperature and particle-hole asymmetry should be very interesting.

This work is an example of how frustrating the hybridisation of the impurity site can lead to novel physics. I have explored this in some other works as well.
]))


== Magnetic dimensional crossover in CrSiTe$#sub[3]$

#balance(columns(2,[
A recurring theme in my work has been to use simple theoretical models to interpret emergent experimental signatures of correlated matter. In this spirit, I recently collaborated with Prof. N Kamaraju's experimental group  on a project investigating the two-step *magnetic dimensional crossover* (paramagnet -> long-range fluctuations -> 3D ferromagnet) in the van der Waals ferromagnet CrSiTe$#sub[3]$. The experiment involves mapping out the two-step crossover by studying a bulk sample of CrSiTe$#sub[3]$ with ultra-fast pulses using *pump-probe spectroscopy* and tracking the acoustic strain pulse generated during relaxation of the carriers.

The shape of the acoustic pulses tracks the various steps of the magnetic crossover through several signatures, such as a phase reversal of the strain pulse in the ferromagnetic phase, a red-shift (softening) of the high-frequency phonons and a gapping out of the low-frequency phonon modes within the strain pulse. In order to explain these signatures, I (along with Prof. S Lal) came up with a simple model of *phonons interacting with the lattice spin fluctuations*. By treating the spin interactions using mean-field theory, we showed that the interacting model can be understood as a theory of new phonon fields with a modified dispersion. More specifically, we showed that the renormalisation of the phonon characteristics due to its interaction with the spin-fluctuations explains the various features mentioned above.
]))

= Software and Algorithmic Development

- *Created a Julia package for working with interacting fermionic models*: In order to optimise my workflow of working with manybody fermionic systems, I developed and published the Julia package #link("https://github.com/abhirup-m/fermions.jl")[_Fermions_]. _Fermions_ is a Julia toolkit designed for the symbolic creation and analysis of second-quantised Hamiltonians and operators for electronic systems, particularly those involving interacting fermions. It was developed to abstract away the complex task of manually constructing large matrices for many-body Hamiltonians and correlation functions, allowing users to define operators and Hamiltonians using simple, predefined symbols. Almost all my projects (publications as well as preprints) have used _Fermions_.

- *Designed an iterative diagonalisation approach for supplement our unitary renormalisation group approach*: In order to study the low-energy theories obtained from our unitary renormalisation group analysis of various impurity models, I designed an iterative diagonalisation algorithm very similar to DMRG: it gradually grows the system by expanding the conduction bath that's hybridising with the impurity site, retaining a fixed number of low-energy states at each step.

- *Calculation of reduced density matrices from expectation values*: The above method of iteratively diagonalising impurity model Hamiltonians makes it difficult to selectively trace out local degrees of freedom; this is because the truncation between low and high energy states requires operators to be rotated into the energy eigenbasis which entangles the local degrees of freedom. As a result, I came up with the following alternative approach to calculate reduced density matrices (RDMs): we express matrix elements of the RDM as expectation values of various transition operators (for eg.,  $braket(1, rho_(12), 2) = c^dagger_1 c_2$); since it is very easy to obtain these operators and states in their rotated form, the RDM can then be constructed by calculating the expectation values in this rotated basis.

= In Conclusion
I am working on several other projects which I plan to complete before joining for a postdoc. These include (i) studying quantum criticality in a model of *heavy-fermions*, from the perspective of Kondo breakdown, and (ii) looking for punctured-Chern invariant in *integer quantum hall* transitions.

Looking ahead, I aim to build on this by investigating *universal aspects* of quantum criticality, particularly developing a unifying framework for fermionic criticality. I am particularly interested in exploring the role of topology and entanglement in such phase transitions. I anticipate that I will be able to join for a postdoctoral position by *March 2026*. I believe that my ability to quickly *learn and adapt new methods*, both analytical and numerical, make me particularly suitable for this position.
