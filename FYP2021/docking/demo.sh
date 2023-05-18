#!/bin/bash
ADTHOME="/opt/adt/MGLTools-1.5.6/MGLToolsPckgs/AutoDockTools"

for ligpdb in `cat list.txt`; do
	ligand=`basname ${ligpdb} .pdb`
	${ADTHOME}/Utilities24/prepare_ligand4.py -l ${ligpdb}
	for protein in zikvMTase hCMTR1 hRNMT ; do
		if [[ ! -e ${protein}_docking ]] ; then
			mkdir ${protein}_docking/
		fi
		vina --center_x 19.390 --center_y 6.054 --center_z 3.936	\
			--size_x 15 --size_y 17.25 --size_z 14.25 \
			--cpu 8 --receptor ./${protein}.pdbqt --ligand ./${ligand}.pdbqt \
			--exhaustiveness 10 --num_modes 100 --energy_range 3.0 \
			--out ${protein}_docking/${ligand}.pdbqt --log ${protein}_docking/${ligand}.log
		${ADTHOME}/Utilities24/pdbqt_to_pdb.py -f ${protein}_docking/${ligand}.pdbqt
	done
done
