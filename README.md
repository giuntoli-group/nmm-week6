# nmm-week6

Colloids are fun, but let's go up in scale and model complexity! This assignment is similar in scope to the one of last week, but we focus on macromolecules/polymers with Coarse grained models. 

## Assignment 1 - Who needs Chemistry?

Develop a Coarse Grained model for a simple polymer (polylactic acid) from a higher-resolution all-atom model. The complex macromolecular structure means that the chemical connectivity must be considered by using multiple beads with bonded interactions. For both bonded and non-bonded interactions we follow a coarse-graining scheme called Iterative Boltzmann Inversion. 

### Instructions

1a. Load the polylactic-AA.data atomistic structure in Ovito and inspect it. How many atoms belong to the same monomer? How many monomers are present in the entire chain?

1b. Define the beads of the CG model. To do so, use the script SCRIPT-BEADS-DEFINITION. How many beads per monomer are defined? How many atoms are included in each of the CG beads?

1c. Define the bonded interactions of the CG model.

(i) Run the script in.polylactic-AA of a single atomistic chain.

(ii) From the sampled configurations, use the script ??? to plot the distributions of all bond, angles, and dihedrals between the centers of mass of the CG beads.

(iii) Fit the distributions using the script ??? (EXPLAIN ROUGHLY HOW IT WORKS).

(iv) From your fits, write the equations used for the bonded potential terms of the CG force field, specifying the values of all parameters. Discuss briefly also what you would have to do to then calibrate the non-bonded interactions.

1d (OPTIONAL, EASY BUT TAKES SOME TIME). Calibrate the non-bonded interactions to complete the CG force field. Run both AA and CG simulations of several chains (density ~0.9, temperature 300K), and compare the distributions of bonds, angles, and radial distribution function between the AA and the CG models.

## Assignment 2 - Walking Randomly

In this assignment we cover the very basics of polymer physics, focusing on the conformation in solution of polymers with varying architecture and molecular interactions. For this exercise, we introduce the bead-spring model for polymers.

### Instructions

2a. starting from the in.single_chain file, obtain the scaling law for radius of gyration of a bead-spring polymer chain in solution with varying length N. Report two plots, one for good solvent and one for poor solvent conditions. Compare your results to theoretical models.

To build the initial chain, use the script CHAIN GENERATION+"PACKING", GIVE PRECISE INSTRUCTIONS. SAME SCRIPT USED LATER FOR MORE COMPLEX ARCHITECTURES.

## Assignment 3 - Digital Breaking Bad

Thanks to advanced synthesis techniques, it is possible to design polymers with tunable architecture and chemical structure, so-called block copolymers, that can assemble into highly-controlled structures. Our synthesis technique is the Python script used in assignment 2, let's invent new polymers that chemists can only dream of and let's see what they assemble into! 

### Instructions

3a. Explore in more detail the script "branched_polymer.py" (WHATEVER YOU ARE USING TO GENERATE BRANCHED STRUCTURES, INCLUDING BLOCKS OF DIFFERENT TYPES AND PROPERLY COMMENTED FOR STUDENTS). 

(i) what are the tunable parameters of the script? Which polymer architectures can be generated?

(ii) using the branched_polymer.py script and A PACKING SCRIPT, generate at least three different data files, each containing a mixture of block copolymers of your choice, with tunable non-bonded interactions for each bead type. Make snapshots with Ovito and discuss the self-assembly behavior you expect.

3b. Choose two of your structures. Adapt the in.single_chain file to define all needed non-bonded parameters of the force field and extend the run time. Run the simulation to study their self-assembly behavior in solution. Report your results both with snapshots and quantitative metrics. Include proof that your system is equilibrated. NEED ADDITIONAL POST-PROCESSING INSTRUCTIONS OR TIPS?

Pro tips: make sure to have enough polymers to get good statistics, but not so many that the equilibration takes forever. Use the literature to guide your choice. Stay away from high-density phases if you don't want to wait forever to reach an equilibrium phase.


## Assignment 4

Assignment 3 dealt with so-called "simple coacervation", the assembly of same-type macromolecules due to (mainly) enthalpic effects. Complex coacervation, where two (or more) different macromolecules assemble in water is also ubiquitous in materials and biological phenomena. This can be observed with simple models of polyelectrolytes in water, which you will do in this assignment that uses a slab setup.

### Instructions

4a. Use the "branched_polymer.py" script to generate two linear chains, each of them with 30 same-type monomers (type 1 for one chain, type 2 for the other). Create a box with 50 chains of each type, and run the "in.coacervate" simulation, setting good solvent conditions for Lennard-Jones interactions, and the charge of the two bead types to +1 and -1 respectively (FOR NAYAN: SCRIPT SHOULD START FROM A HOMOGENEOUS SOLUTION AND GET TO THE SLAB, IDEALLY. NO SALT). Prove that the system reaches equilibrium. After that, measure the relative densities of the polymer-rich phase and the solvent-reach phase (ADD INSTRUCTIONS/HINTS HERE?). Measure the radius of gyration of the polymers and discuss potential finite-size effects of your simulation setup.

4b. Repeat the simulations by adding increasing amount of salt, simulated in the form of individual beads with charge +1 and -1 (always in equal amount, to ensure charge neutrality of the system). For each simulation, report in the same plot the densities of the polymer-rich phase and the solvent-rich phase. Doing so will allow you to build the binodal curve for the complex coacervation process. From this plot, estimate the critical salt concentration at which the complex coacervation does not happen anymore. Compare the salt concentration found to experimentally reported values and discuss potential limitations of this model.
