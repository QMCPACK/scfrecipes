# scfrecipes
Challenging inputs and recipes for self-consistent field codes

## Bulk MBT
Located in the `mbt_bulk` directory, there are example attempts to run MBT in
A-AFM ordering with fully relativistic ONCV potentials and using a hybrid (PBE0)
functional

* Attempt 1:  In the `attempt1` directory, a MP kmesh is used
* Attempt 2:  In the `attempt2` directory, explicit kpoints are used

In both cases, an error occurs after a few successful Fock matrix updates.
The error printout reads

```
ZPOTRF exited with INFO=           17             

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Error in routine ZPOTRF (1):                  
Cholesky failed in invchol.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

stopping ...
```

### Solution attempts

* Attempt to use `diagonalization = 'cg'`. This leads to the following error:
```
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Error in routine  cdiaghg (136):
     problems computing cholesky
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    stopping ...
```
