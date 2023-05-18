# MD-zero
Collection of educational materials and project files prepared for my teaching duties since I have started learning to do molecular modelling, in particular molecular dynamics (MD) simulation. 

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fmolmdl%2FMD-zero&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

**Handouts and tutorials** in this work are licensed under a
[CC-BY-NC-SA 4.0 License][cc-by-nc-sa]. [![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

**NOTE: files with the following extensions are stored via git-lfs.**
- zip 
- trr 
- xtc 
- mp4 
- tgz 
- pptx

Please download them via web-version of GitHub or `git lfs` if you use the command line interface.

---
A 64-bit Windows-only "portable" package of [CPU Gromacs binary (Version 2019.6) bundled with several analysis tools](https://github.com/molmdl/MD-zero/releases/tag/MDportable_2021.09.30_fixed_release) can be found in "[Releases](https://github.com/molmdl/MD-zero/releases/)" for easy installation and usage. 
**However, I DO NOT own the copyright of Gromacs, QTGrace and Jmol; NOR do I own copyright of the documents included in the "doc" directory in the package. Please refer to the corresponding license file for the infomration.**

For a more updated or GPU-accelerated version of GROMACS binary on Windows, please refer to other sources, e.g. from [these repositories](https://github.com/search?q=gromacs+windows&type=repositories) or compile it yourself for optimized performance.

Many students who lack computational background love double-clickers. Whenever they see an icon, they double-click it. If the double-click action does not open a new window, they lose 50% of their motivation. If they found that it is a command-line program, they lose 90% of their motivation. Part of the materials aimed to provide these students with a brief experience of what is molecular modelling and MD, which is not recommended for actually learning the technique. Hence the name of "MD-zero" of the repository, it's not yet "MD-101" in terms of teaching. 

Also include materials of other molecular modelling techniques which is not necessarily MD.

I aquired my (minimal) programming skill via self-teaching, i.e. pseudo-code + Googling + (minimal) reference book. The code may not be optimized or following best-practices. Please feel free to comment on how to improve the code!

For details and related references of different projects, please refer to the README file in the corresponding directory. 

---
## Other tools that can be useful for educational purposes 
Here is a list of software have the potential to be utilized in future educational projects. They are lacking some important features which forced me to stay with other programs for now, but I look forward to their future development.
1. [Foldit](https://fold.it) and [FolditStandalone](https://fold.it/dist/external/standalone/quickstart.html)
    - **Advantage:** Foldit is a video game of protein modelling, protein design, and small-molecule design that use ROSETTA as the backend. It is a molecular modelling program but not a MD software. It has comprehensive biochemistry tutorial and provides game-like hands-on experience on molecular modelling.
    - **Disadvantage:** Foldit/FolditStandalone only has limited support for non-protein. Setting up custom puzzle is also tricky and may require additional tools.
2. [UCSF ChimeraX](https://www.cgl.ucsf.edu/chimerax/)
    - **Advantage:** Allows interactive MD simulation within the GUI.
	- **Disadvantage:** Limited forcefield parameters, currently only for protein with standard amino acids and an addition set of small-molecules. Requires a recent version of OpenGL and not available on CentOS7 server.
3. [QwikMD GUI](http://www.ks.uiuc.edu/Research/qwikmd/) of [NAMD](http://www.ks.uiuc.edu/Research/namd/) in [VMD](https://www.ks.uiuc.edu/Research/vmd/)
    - **Advantage:** As the native GUI of NAMD, provides a GUI for MD setup, real-time monitoring and optionally interactive MD.
	- **Disadvantage:** GUI not very attractive for novice users. It can be tricky to setup the interface, and the real-time simulation can be slow/freezing during the run (depends on hardware).
4. [Dynamics plugin for PyMOL](https://pymolwiki.org/index.php/GROMACS_Plugin)
    - **Advantage:** This is a PyMOL plugin that provides a GUI to configure and analyse GROMACS simulations within PyMOL.
	- **Disadvantage:** Limited options for simulation, especially in the choice of forcefield.
5. [Galaxy Platform](galaxyproject.org)
    - **Advantage:** A web server for life-science research including molecular modelling. Provides an exhaustive collection of tools and workflow on cloud with user-friendly GUI, no installation is needed.
	- **Disadvantage:** It is a server, experimental collaborators may have concerns about submitting unpublished data to a server hosted by other institutions. Limited options implemented in the GUI.
