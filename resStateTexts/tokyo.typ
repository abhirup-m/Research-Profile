#import "../src/settings.typ": *
#let sequence = ("Mukherjee2023", "mukherjee2025", "Mukherjee2022", "Patra_2023", "Aashish2024", "Mukherjee2024", "Anjan2025")

#balance(columns( 2,[
  I am a quantum condensed matter theorist focusing primarily on characterising phases of strongly correlated *quantum matter* - novel states that appear at zero temperature and display emergent exotic properties, often driven by strong interactions between the constituent particles. My work focuses on understanding various features of Mott metal-insulator transitions from the perspective of *Kondo breakdown*. Impurity models involving destruction of Kondo screening often display quantum criticality, non-Fermi liquid physics and pseudogapped phases. This has allowed us to propose simple impurity models that are able to capture and understand crucial features of Mott transitions. Key themes of my research include: (i) quantum criticality, (ii) changes in Fermi surface topology, (iii) entanglement-driven transition, and (iv) boundary condition sensitivity and spectral flow.

The Kondo effect refers to the low-energy hybridisation of a magnetic impurity with a non-interacting band of electrons. Through auxiliary model methods that map the local physics of a lattice model onto the dynamics of an impurity model, a successful Kondo screening is equivalent to the physics of Landau Fermi liquids. This is where my work comes in: by extending the impurity model with competing tendencies, we *frustrate the Kondo screening process* and this leads to novel phases such as Mott insulators and non-Fermi liquids. 

By incorporating the effects of the lattice, we have also successfully captured correlation-driven *Lifshitz transitions*--phase transition involving changes in Fermi surface topology. In many of our works, we characterise various phases and the intervening transitions through *entanglement patterns*. This also ties into the fourth theme I mentioned above -- sensitivity to boundary conditions. Indeed, in one of my works, we show how a certain function of the entanglement in a metal can be used to calculate the Luttinger's volume of the system--the number of extended states available for *spectral flow*.
]))

= Kondo breakdown as route to understanding Mott transitions [@Mukherjee2023, @mukherjee2025]

#balance(columns(2,[
  == Mott transition on Bethe lattice: $d=infinity$

The rich physics of metal–insulator transitions (MITs) in strongly correlated systems has been an active subject of study for quite some time. While DMFT obtains a self-consistent solution of the *Mott MIT* for the $1\/2-$filled Hubbard model in infinite dimensions, important questions such as the precise nature of the impurity model and the nature of quantum critical metal at the transition remain controversial.

In order to address this, we proposed [@Mukherjee2023] an *extended Anderson impurity model* that captures the infinite dimensional Mott transition in remarkable detail, in the form of a *localisation-delocalisation transition* of the impurity electron. Using this model, we demonstrated the presence of *charge fluctuations* proximate to the impurity site in the conduction bath as the driver of the transition, and the emergence of quantum critical *non-Fermi liquid* excitations at the transition.

== Mott transition in 2D
We then applied our approach to the case of two dimensions, in order to address some of the open questions pertaining to the mysterious pseudogap and non-Fermi liquid phases that arise in the *copper-oxide and heavy-fermion materials*. In [@mukherjee2025], we updated the extended Anderson impurity model by *embedding the impurity site* within a 2D square lattice and "periodised" our impurity model using manybody translation operators to make contact with an *extended Hubbard model*. We showed that the transition from a Fermi liquid to a symmetry-preserved Mott insulator goes through a quantum critical *Mott metal* characterised by non-Fermi liquid excitations with anomalous self-energy behaviour and long-range spin correlations and entanglement.

]))

= Bulk-boundary correspondence \& entanglement renormalisation [@Mukherjee2024]
#balance(columns(2,[
  The work in [@Mukherjee2024] differs somewhat from the others in the sense that it involves non-interacting electrons, but it speaks to the broader theme of emergence and *topological transitions* in fermionic systems. Specifically, this work involves a demonstration of the holographic principle by constructing the emergent dimension from the quantum field theory, which is typically more difficult than the top-down approach of studying strongly-coupled quantum theories by mapping them to their semiclassical gravity duals. 

  In [@Mukherjee2024], we provide such a construction by showing how the *entanglement renormalisation* in a free fermion system (with and without a mass gap) leads to the emergence of a holographic dimension. Tuning the system from a gapless phase into a gap leads to a change in curvature of the emergent space; we argue that this topological transition (and the underlying critical Fermi surface at this transition) coincides with the formation of a *quantum wormhole geometry* that connects the UV and the IR of the emergent dimension.

]))

= Research Interests

As is clear from the preceding sections, my primary research interest lies in understanding Mott transitions and correlation-driven metal–insulator transitions in low-dimensional quantum materials, particularly through the lens of Kondo breakdown. Specific aspects of my interest include emergent non-Fermi liquid phases, orbital/band-selective transitions, and Fermi surface topology changes, in the context of various materials and models. Other topics that I am interested in and look forward to working on in the future include high-$T_c$ superconductivity and various topological phases.

Below I list general ideas for potential projects. _These projects are intended as indicative examples of my research interests, and I anticipate refining or expanding them in close interaction with anyone interested, provided they align with my broader scientific interests mentioned above_.
#balance(
  columns(2, [
*Many-body scars in an exactly solvable model*. Having invesigated some apects of eigenstate thermalisation in one my current projecs, I am interested in studying similar ideas in the Hatsugai-Kohmoyo model $H_"KM"$, an exactly solvable model of correlated electrons, displaying non-Fermi liquid excitations. It might be worth investigating whether a perturbatively non-integrable model (such as $H = H_"KM" + P_nu H_"Hub" P_nu$, where $H_"Hub"$ is the Hubbard model and $P_nu$ projects onto some symmetry sectors) can host many-body scars.
 
*Studying effect of electronic correlations in MATBG through an exactly solvable model*. As mentioned in a previous point, the Hatsugai-Kohmoto model is an exactly solvable model of correlated electrons, displaying non-Fermi liquid and Mott insulating phases. This therefore provides an interesting route to studying the emergence of novel phases in a correlated MATBG system. Instabilities towards non-BCS superconductivity can also be explored and compared against experiments.

*Exploring violation of Luttinger's theorem in heavy-fermion systems*. A growing body of recent literature suggests that violation of Luttinger's theorem are a result of changes in the anomaly structure of the Fermi surface. One can investigate these claims particularly in the context of heavy-fermion systems to see if we can write down topological order parameters that track phase transitions in such systems. One can also consider the question of correlating such anomalies to entanglement patterns.

*Fate of topological phases in the presence of interactions*. The Hatsugai-Kohmoto model is an exactly-solvable model of correlated electrons, and contains non-Fermi liquid and Mott insulating phases. It might be interesting to introduce such interactions within a model of topological insulator (such as the SSH model), and verify whether the topological features survive. The possiblity of obtaining analytical insights makes this project potentially very fruitful.
]))
