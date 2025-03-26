# nmm-week6

Colloids are fun, but let's go up in scale and model complexity! This assignment is similar in scope to the one of last week, but we focus on macromolecules/polymers with CGMD

## Assignment 1

Once again, develop a CG model for a simple polymer (polylactic acid) from a higher-resolution all-atom model. The connectivity between beads means bonded interactions must also be considered. For both bonded and non-bonded interactions, we follow a coarse-graining scheme called Iterative Boltzmann Inversion. 

### Instructions

1a WAIT FOR FILES FROM YANG. RUN AA 50 MOLECULES, MEASURE DISTIBUTIONS OF BONDS, ANGLES, DIHEDRALS, AND G(R). FIT ANALYTICAL FUNCTIONS.

1b BUILD A CG CHAIN, DEFINE TOTAL MASS, SIZE, AND INTERACTIONS BASED ON 1A. COMPARE STRUCTURE AND DYNAMICS WITH AA. ALSO COMPARE COMPUTATIONAL COST.

## Assignment 2

In this assignment we cover the very basics of polymer physics, focusing on the conformation in solution of polymers with varying architecture and molecular interactions. For this exercise, we introduce the bead-spring model for polymers.

### Instructions

2a. starting from the in.single_chain file, perform simulations of a single polymer chain of varying molecular weight N in both good solvent and poor solvent conditions. Tune the non-bonded interactions to access different regimes of solvent quality. For all solvent conditions, measure the radius of gyration Rg, persistance length l_p, and autocorrelation of the end-to-end vector Ree(t) as a function of N. Fit the data obtained analytically and compare your results to what expected from theory (LINK TO THEORETICAL SCALINGS).
Bonus (optional): identify the theta-solvent conditions in this model. (TO TEST IT OURSELVES).

2b. REPEAT WITH STARS/GRAFTED NANOPARTICLES? HOW TO MAKE IT NOT BORING?

## Assignment 3

BLOCK COPOLYMERS ASSEMBLY PHASES

### Instructions

3a. 

3b. 

## Assignment 4

POLYELECTROLYTE COMPLEXATION

### Instructions

4a. 

4b. 
