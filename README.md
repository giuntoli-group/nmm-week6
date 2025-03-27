# nmm-week6

Colloids are fun, but let's go up in scale and model complexity! This assignment is similar in scope to the one of last week, but we focus on macromolecules/polymers with CGMD

## Assignment 1

Once again, develop a CG model for a simple polymer (polylactic acid) from a higher-resolution all-atom model. The connectivity between beads means bonded interactions must also be considered. For both bonded and non-bonded interactions we follow a coarse-graining scheme called Iterative Boltzmann Inversion. 

### Instructions

1a. WAIT FOR FILES FROM YANG. RUN AA 50 MOLECULES, MEASURE DISTIBUTIONS OF BONDS, ANGLES, DIHEDRALS, AND G(R). FIT ANALYTICAL FUNCTIONS.

1b. BUILD A CG CHAIN, DEFINE TOTAL MASS, SIZE, AND INTERACTIONS BASED ON 1A. COMPARE STRUCTURE AND DYNAMICS WITH AA. ALSO COMPARE COMPUTATIONAL COST.

## Assignment 2

In this assignment we cover the very basics of polymer physics, focusing on the conformation in solution of polymers with varying architecture and molecular interactions. For this exercise, we introduce the bead-spring model for polymers.

### Instructions

2a. starting from the in.single_chain file, perform simulations of a single polymer chain of varying molecular weight N in both good solvent and poor solvent conditions. Tune the non-bonded interactions to access different regimes of solvent quality. For all solvent conditions, measure the radius of gyration Rg, persistance length l_p, and autocorrelation of the end-to-end vector Ree(t) as a function of N. Fit the data obtained analytically and compare your results to what is expected from theory (LINK TO THEORETICAL SCALINGS). Also discuss briefly how you would map the adimensional units of the model (time, energy, temperature) to real units.
Bonus (optional): identify the theta-solvent conditions in this model. (TO TEST IT OURSELVES).

2b. REPEAT WITH STARS/GRAFTED NANOPARTICLES? HOW TO MAKE IT NOT BORING?

## Assignment 3

Thanks to advanced synthesis techniques, it is possible to design polymers with tunable architecture and chemical structure, so-called block copolymers, that can assemble into highly-controlled structures. Our synthesis technique is a Python script, let's invent new polymers that chemists can only dream of! 

### Instructions

3a. Use the "branched_polymer.py" (WHATEVER YOU ARE USING TO GENERATE BRANCHED STRUCTURES, INCLUDING BLOCKS OF DIFFERENT TYPES AND PROPERLY COMMENTED FOR STUDENTS) to generate the following structures. In all cases, A-type monomers are hydrophobic (poor solvent conditions) and B-type monomers are hydrophilic (good solvent conditions). (i) a linear triblock copolymer with ABA structure (each block being 10 monomers long). (ii) A star polymer (DETAILS, CHECK PAPER, AIM FOR TUBULAR). (iii) A bottlebrush polymer (DETAILS, CHECK PAPER, AIM FOR LAMELLAR). Report the structures generated via Ovito snapshots.

3b. Adapting the in.single_chain file, for each structure separately, run simulations containing multiple molecules to study their self-assembly behavior in solution. Report your results both with snapshots and quantitative metrics, such as (CHECK PAPER). Careful: make sure you have enough molecules to have good statistics, but not enough that the time needed for equilibration is beyond the scales of the course! Make similar considerations for the density you choose, both too high or too low densities will increase the time needed. Alongside your other metrics, also report proof that your system is equilibrated.

3c. Bonus (optional): design challenge! Build a copolymer architecture so that (CONSTRAINTS, MAKE IT A FUN PUZZLE!).

## Assignment 4

Assignment 3 dealt with so-called "simple coacervation", the assembly of same-type macromolecules due to (mainly) enthalpic effects. Complex coacervation, where two (or more) different macromolecules assemble in water is also ubiquitous in materials and biological phenomena. This can be observed with simple models of polyelectrolytes in water, which you will do in this assignment that uses a slab setup.

### Instructions

4a. Use the "branched_polymer.py" script to generate two linear chains, each of them with 30 same-type monomers (type 1 for one chain, type 2 for the other). Create a box with 50 chains of each type, and run the "in.coacervate" simulation, setting good solvent conditions for Lennard-Jones interactions, and the charge of the two bead types to +1 and -1 respectively (FOR NAYAN: SCRIPT SHOULD START FROM A HOMOGENEOUS SOLUTION AND GET TO THE SLAB, IDEALLY. NO SALT). Prove that the system reaches equilibrium. After that, measure the relative densities of the polymer-rich phase and the solvent-reach phase (ADD INSTRUCTIONS/HINTS HERE?). Measure the radius of gyration of the polymers and discuss potential finite-size effects of your simulation setup.

4b. Repeat the simulations by adding increasing amount of salt, simulated in the form of individual beads with charge +1 and -1 (always in equal amount, to ensure charge neutrality of the system). For each simulation, report in the same plot the densities of the polymer-rich phase and the solvent-rich phase. Doing so will allow you to build the binodal curve for the complex coacervation process. From this plot, estimate the critical salt concentration at which the complex coacervation does not happen anymore. Compare the salt concentration found to experimentally reported values and discuss potential limitations of this model.
