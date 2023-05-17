# MD-zero
Collection of educational materials and project files prepared for my teaching duties since I have started learning to do molecular modelling, in particular molecular dynamics (MD) simulation. 

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fmolmdl%2FMD-zero&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

<b>Handouts and tutorials</b> in this work are licensed under a
[CC-BY-NC-SA 4.0 License][cc-by-nc-sa]. [![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

A 64-bit Windows-only "portable" package of <a href="https://github.com/molmdl/MD-zero/releases/tag/MDportable_2021.09.30">CPU Gromacs binary (Version 2019.6) bundled with several analysis tools</a> can be found in <a href="https://github.com/molmdl/MD-zero/releases/">"Releases"</a> for easy installation and usage. 
<b>However, I DO NOT own the copyright of Gromacs, QTGrace and Jmol; NOR do I own copyright of the documents included in the "doc" directory in the package. Please refer to the corresponding license file for the infomration.</b>

For a more updated or GPU-accelerated version of GROMACS binary on Windows, please refer to other sources, e.g. from <a href="https://github.com/search?q=gromacs+windows&type=repositories"> these repositories</a> or compile it yourself for optimized performance.

Part of the materials aimed to provide students with a brief experience of what is molecular modelling and MD, which is not recommended for actually learning the technique. Hence the name of "MD-zero" of the repository, it's not yet "MD-101" in terms of teaching. 

Also include materials of other molecular modelling techniques which is not necessarily MD.

I aquired my (minimal) programming skill via self-teaching, i.e. pseudo-code + Googling + (minimal) reference book. The code may not be optimized or following best-practices. Please feel free to comment on how to improve the code!

For details and related references of different projects, please refer to the README file in the corresponding directory. 

---
## Related educational materials that I prepared
- <a href="https://github.com/molmdl/simplifyEval">molmdl/simplifyEval</a> 

---
## Other tools that can be useful for educational purposes 
Here is a list of software have the potential in future educational projects. They are lacking some important features which forced me to stay with other programs for now, but I look forward to their future development.
1. <a href="https://fold.it">Foldit</a> and <a href="https://fold.it/dist/external/standalone/quickstart.html">FolditStandalone</a>
    - <b>Advantage:</b> Foldit is a video game of protein modelling, protein design, and small-molecule design that use ROSETTA as the backend. It is a molecular modelling softare but not a MD softare. It has comprehensive biochemistry tutorial and provides game-like hands-on experience on molecular modelling.
    - <b>Disadvantage:</b> Foldit/FolditStandalone only has limited support for non-protein. Setting up custom puzzle is also tricky.
2. <a href="https://www.cgl.ucsf.edu/chimerax/">UCSF ChimeraX</a> 
    - <b>Advantage:</b> Allows interactive MD simulation within the GUI.
	- <b>Disadvantage:</b> Limited forcefield parameters, currently only for protein with standard amino acids and an addition set of small-molecules. Requires a recent version of OpenGL and not available on CentOS7 server.
3. <a href="http://www.ks.uiuc.edu/Research/qwikmd/">QwikMD GUI</a> of <a href="http://www.ks.uiuc.edu/Research/namd/">NAMD</a> in <a href="https://www.ks.uiuc.edu/Research/vmd/">VMD</a> 
    - <b>Advantage:</b> As the native GUI of NAMD, provides a GUI for MD setup, real-time monitoring and optionally interactive MD.
	- <b>Disadvantage:</b> GUI not very attractive for novice users. It can be tricky to setup the interface, and the real-time simulation can be slow/freezing during the one (depends on hardware).
4. <a href="https://pymolwiki.org/index.php/GROMACS_Plugin">Dynamics plugin for PyMOL</a> 
    - <b>Advantage:</b> This is a PyMOL plugin that provides a GUI to configure and analysis GROMACS simulations within PyMOL.
	- <b>Disadvantage:</b> Limited options for simulation, especially in the choice of forcefield.
5. <a href="https://galaxyproject.org/">Galaxy Platform</a>
    - <b>Advantage:</b> A web server for life-science research including molecular modelling. Provides an exhaustive collection of tools and workflow on cloud with user-friendly GUI, no installation is needed.
	- <b>Disadvantage:</b> Limited options implemented in the GUI.
