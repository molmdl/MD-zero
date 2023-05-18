@echo off
REM Preface
ECHO This was originally a simple bash script that I made to run the "Lysozyme in Water" 
ECHO tutorial by Justin Lemkul to test new GROMACS installations when I was doing 
ECHO my final year project in 2017. It was updated according to the latest tutorials to 
ECHO be run with GROMACS version 2018.x or later in 2018, and have been rewritten for 
ECHO windows cmd in March 2020. 
ECHO.
ECHO 	Website of Justin Lemkul's Tutorial: http://www.mdtutorials.com
ECHO 	Publication of the tutorial suite DOI: 10.33011/livecoms.1.1.5068
ECHO.
PAUSE
ECHO.
ECHO If you want to terminate this script, press Ctrl+C then type Y
ECHO.
PAUSE
ECHO.
ECHO If you move this directory out of its parent directory, 
ECHO ***REMEMBER TO CHANGE THE FULL PATH OF gmx.exe BEFORE YOU START THE SIMULATION!!!***
ECHO.
PAUSE
REM Script to fetch the files
ECHO.
ECHO =======================================
ECHO How to get the files in this directory
ECHO ---------------------------------------
ECHO FOR %%G IN (ions,minim,nvt,npt,md) DO (
ECHO ECHO Downloading %%G.mdp ...
ECHO curl http://www.mdtutorials.com/gmx/lysozyme/Files/%%G.mdp -O %%G.mdp)
ECHO curl https://files.rcsb.org/download/model.pdb -O model.pdb
ECHO =======================================
ECHO.
PAUSE
ECHO.
ECHO The simulation will start automatically when you are ready to continue.
ECHO.
PAUSE
REM Starting the real stuff
ECHO 01_pdb2gmx
findstr /v HOH model.pdb > model_clean.pdb
D:\gmx_fftw3\bin\gmx.exe pdb2gmx -f model_clean.pdb -o model_processed.gro -water spce -ff oplsaa
ECHO skipping 02_topology (explanations)
REM Solvation
ECHO 03_solvate
D:\gmx_fftw3\bin\gmx.exe editconf -f model_processed.gro -o model_newbox.gro -c -d 1.0 -bt cubic
D:\gmx_fftw3\bin\gmx.exe solvate -cp model_newbox.gro -cs spc216.gro -o model_solv.gro -p topol.top
REM Add ions
ECHO 04_ions
D:\gmx_fftw3\bin\gmx.exe grompp -f ions.mdp -c model_solv.gro -p topol.top -o ions.tpr
ECHO SOL | D:\gmx_fftw3\bin\gmx.exe genion -s ions.tpr -o model_solv_ions.gro -p topol.top -pname NA -nname CL -neutral
REM Energy Minimization
ECHO 05_em
D:\gmx_fftw3\bin\gmx.exe grompp -f minim.mdp -c model_solv_ions.gro -p topol.top -o em.tpr
D:\gmx_fftw3\bin\gmx.exe mdrun -v -deffnm em
ECHO Potential | D:\gmx_fftw3\bin\gmx.exe energy -f em.edr -o potential.xvg
REM Restrained NVT Equilibration
ECHO 06_equil
D:\gmx_fftw3\bin\gmx.exe grompp -f nvt.mdp -c em.gro -r em.gro -p topol.top -o nvt.tpr
D:\gmx_fftw3\bin\gmx.exe mdrun -v -deffnm nvt
ECHO Temperature | D:\gmx_fftw3\bin\gmx.exe energy -f nvt.edr -o temperature.xvg
REM Restrained NPT Equilibration
ECHO 07_equil2
D:\gmx_fftw3\bin\gmx.exe grompp -f npt.mdp -c nvt.gro -r nvt.gro -t nvt.cpt -p topol.top -o npt.tpr
D:\gmx_fftw3\bin\gmx.exe mdrun -v -deffnm npt
ECHO Pressure | D:\gmx_fftw3\bin\gmx.exe energy -f npt.edr -o pressure.xvg
ECHO Density | D:\gmx_fftw3\bin\gmx.exe energy -f npt.edr -o density.xvg
REM Production MD
ECHO 08_MD
D:\gmx_fftw3\bin\gmx.exe grompp -f md.mdp -c npt.gro -t npt.cpt -p topol.top -o md_0_1.tpr
D:\gmx_fftw3\bin\gmx.exe mdrun -v -deffnm md_0_1
REM Analysis
ECHO 09_analysis
ECHO 1 0 | D:\gmx_fftw3\bin\gmx.exe trjconv -s md_0_1.tpr -f md_0_1.xtc -o md_0_1_noPBC.xtc -pbc mol -center
ECHO 4 4 | D:\gmx_fftw3\bin\gmx.exe rms -s md_0_1.tpr -f md_0_1_noPBC.xtc -o rmsd.xvg -tu ns
ECHO 4 4 | D:\gmx_fftw3\bin\gmx.exe rms -s 1AKI.pdb -f md_0_1_noPBC.xtc -o rmsd_xtal.xvg -tu ns
ECHO 10_analysis2
ECHO 1 | D:\gmx_fftw3\bin\gmx.exe gyrate -s md_0_1.tpr -f md_0_1_noPBC.xtc -o gyrate.xvg
REM Notes
ECHO ****************
ECHO To plot the graphs, drag and drop the .xvg files to QtGrace.exe
ECHO To visuallize the trajectories, install a molecular visualization program such as UCSF Chimera
ECHO More information can be found in README.txt
ECHO ****************
ECHO Program terminated normally.
ECHO ****************
PAUSE