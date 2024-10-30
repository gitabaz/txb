pub const Group = struct {
    name: []const u8,
    archives: []const Archive,
};

pub const Archive = struct {
    name: []const u8,
    id: []const u8,
    categories: []const Category,
};

pub const Category = struct {
    name: []const u8,
    id: []const u8,
    description: []const u8,
};

pub const Physics: Group = .{
    .name = "Physics",
    .archives = &[_]Archive{
        .{
            .name = "Astrophysics",
            .id = "astro-ph",
            .categories = &[_]Category{
                .{
                    .name = "astro-ph.CO",
                    .id = "Cosmology and Nongalactic Astrophysics",
                    .description = "Phenomenology of early universe, cosmic microwave background, cosmological parameters, primordial element abundances, extragalactic distance scale, large-scale structure of the universe. Groups, superclusters, voids, intergalactic medium. Particle astrophysics: dark energy, dark matter, baryogenesis, leptogenesis, inflationary models, reheating, monopoles, WIMPs, cosmic strings, primordial black holes, cosmological gravitational radiation",
                },
                .{
                    .name = "astro-ph.EP",
                    .id = "Earth and Planetary Astrophysics",
                    .description = "Interplanetary medium, planetary physics, planetary astrobiology, extrasolar planets, comets, asteroids, meteorites. Structure and formation of the solar system",
                },
                .{
                    .name = "astro-ph.GA",
                    .id = "Astrophysics of Galaxies",
                    .description = "Phenomena pertaining to galaxies or the Milky Way. Star clusters, HII regions and planetary nebulae, the interstellar medium, atomic and molecular clouds, dust. Stellar populations. Galactic structure, formation, dynamics. Galactic nuclei, bulges, disks, halo. Active Galactic Nuclei, supermassive black holes, quasars. Gravitational lens systems. The Milky Way and its contents",
                },
                .{
                    .name = "astro-ph.HE",
                    .id = "High Energy Astrophysical Phenomena",
                    .description = "Cosmic ray production, acceleration, propagation, detection. Gamma ray astronomy and bursts, X-rays, charged particles, supernovae and other explosive phenomena, stellar remnants and accretion systems, jets, microquasars, neutron stars, pulsars, black holes",
                },
                .{
                    .name = "astro-ph.IM",
                    .id = "Instrumentation and Methods for Astrophysics",
                    .description = "Detector and telescope design, experiment proposals. Laboratory Astrophysics. Methods for data analysis, statistical methods. Software, database design",
                },
                .{
                    .name = "astro-ph.SR",
                    .id = "Solar and Stellar Astrophysics",
                    .description = "White dwarfs, brown dwarfs, cataclysmic variables. Star formation and protostellar systems, stellar astrobiology, binary and multiple systems of stars, stellar evolution and structure, coronas. Central stars of planetary nebulae. Helioseismology, solar neutrinos, production and detection of gravitational radiation from stellar systems",
                },
            },
        },
        .{
            .name = "Condensed Matter",
            .id = "cond-mat",
            .categories = &[_]Category{
                .{
                    .name = "cond-mat.dis-nn",
                    .id = "Disordered Systems and Neural Networks",
                    .description = "Glasses and spin glasses; properties of random, aperiodic and quasiperiodic systems; transport in disordered media; localization; phenomena mediated by defects and disorder; neural networks",
                },
                .{
                    .name = "cond-mat.mes-hall",
                    .id = "Mesoscale and Nanoscale Physics",
                    .description = "Semiconducting nanostructures: quantum dots, wires, and wells. Single electronics, spintronics, 2d electron gases, quantum Hall effect, nanotubes, graphene, plasmonic nanostructures",
                },
                .{
                    .name = "cond-mat.mtrl-sci",
                    .id = "Materials Science",
                    .description = "Techniques, synthesis, characterization, structure. Structural phase transitions, mechanical properties, phonons. Defects, adsorbates, interfaces",
                },
                .{
                    .name = "cond-mat.other",
                    .id = "Other Condensed Matter",
                    .description = "Work in condensed matter that does not fit into the other cond-mat classifications",
                },
                .{
                    .name = "cond-mat.quant-gas",
                    .id = "Quantum Gases",
                    .description = "Ultracold atomic and molecular gases, Bose-Einstein condensation, Feshbach resonances, spinor condensates, optical lattices, quantum simulation with cold atoms and molecules, macroscopic interference phenomena",
                },
                .{
                    .name = "cond-mat.soft",
                    .id = "Soft Condensed Matter",
                    .description = "Membranes, polymers, liquid crystals, glasses, colloids, granular matter",
                },
                .{
                    .name = "cond-mat.stat-mech",
                    .id = "Statistical Mechanics",
                    .description = "Phase transitions, thermodynamics, field theory, non-equilibrium phenomena, renormalization group and scaling, integrable models, turbulence",
                },
                .{
                    .name = "cond-mat.str-el",
                    .id = "Strongly Correlated Electrons",
                    .description = "Quantum magnetism, non-Fermi liquids, spin liquids, quantum criticality, charge density waves, metal-insulator transitions",
                },
                .{
                    .name = "cond-mat.supr-con",
                    .id = "Superconductivity",
                    .description = "Superconductivity: theory, models, experiment. Superflow in helium",
                },
            },
        },
        .{
            .name = "General Relativity and Quantum Cosmology",
            .id = "gr-qc",
            .categories = &[_]Category{
                .{
                    .name = "gr-qc",
                    .id = "General Relativity and Quantum Cosmology",
                    .description = "General Relativity and Quantum Cosmology Areas of gravitational physics, including experiments and observations related to the detection and interpretation of gravitational waves, experimental tests of gravitational theories, computational general relativity, relativistic astrophysics, solutions to Einstein's equations and their properties, alternative theories of gravity, classical and quantum cosmology, and quantum gravity.",
                },
            },
        },
        .{
            .name = "High Energy Physics - Experiment",
            .id = "hep-ex",
            .categories = &[_]Category{
                .{
                    .name = "hep-ex",
                    .id = "High Energy Physics - Experiment",
                    .description = "Results from high-energy/particle physics experiments and prospects for future experimental results, including tests of the standard model, measurements of standard model parameters, searches for physics beyond the standard model, and astroparticle physics experimental results. Does not include: detectors and instrumentation nor analysis methods to conduct experiments.",
                },
            },
        },
        .{
            .name = "High Energy Physics - Lattice",
            .id = "hep-lat",
            .categories = &[_]Category{
                .{
                    .name = "hep-lat",
                    .id = "High Energy Physics - Lattice",
                    .description = "Lattice field theory. Phenomenology from lattice field theory. Algorithms for lattice field theory. Hardware for lattice field theory.",
                },
            },
        },
        .{
            .name = "High Energy Physics - Phenomenology",
            .id = "hep-ph",
            .categories = &[_]Category{
                .{
                    .name = "hep-ph",
                    .id = "High Energy Physics - Phenomenology",
                    .description = "Theoretical particle physics and its interrelation with experiment. Prediction of particle physics observables: models, effective field theories, calculation techniques. Particle physics: analysis of theory through experimental results.",
                },
            },
        },
        .{
            .name = "High Energy Physics - Theory",
            .id = "hep-th",
            .categories = &[_]Category{
                .{
                    .name = "hep-th",
                    .id = "High Energy Physics - Theory",
                    .description = "Formal aspects of quantum field theory. String theory, supersymmetry and supergravity.",
                },
            },
        },
        .{
            .name = "Mathematical Physics",
            .id = "math-ph",
            .categories = &[_]Category{
                .{
                    .name = "math-ph",
                    .id = "Mathematical Physics",
                    .description = "Articles in this category focus on areas of research that illustrate the application of mathematics to problems in physics, develop mathematical methods for such applications, or provide mathematically rigorous formulations of existing physical theories. Submissions to math-ph should be of interest to both physically oriented mathematicians and mathematically oriented physicists; submissions which are primarily of interest to theoretical physicists or to mathematicians should probably be directed to the respective physics/math categories",
                },
            },
        },
        .{
            .name = "Nonlinear Sciences",
            .id = "nlin",
            .categories = &[_]Category{
                .{
                    .name = "nlin.AO",
                    .id = "Adaptation and Self-Organizing Systems",
                    .description = "Adaptation, self-organizing systems, statistical physics, fluctuating systems, stochastic processes, interacting particle systems, machine learning",
                },
                .{
                    .name = "nlin.CD",
                    .id = "Chaotic Dynamics",
                    .description = "Dynamical systems, chaos, quantum chaos, topological dynamics, cycle expansions, turbulence, propagation",
                },
                .{
                    .name = "nlin.CG",
                    .id = "Cellular Automata and Lattice Gases",
                    .description = "Computational methods, time series analysis, signal processing, wavelets, lattice gases",
                },
                .{
                    .name = "nlin.PS",
                    .id = "Pattern Formation and Solitons",
                    .description = "Pattern formation, coherent structures, solitons",
                },
                .{
                    .name = "nlin.SI",
                    .id = "Exactly Solvable and Integrable Systems",
                    .description = "Exactly solvable systems, integrable PDEs, integrable ODEs, Painleve analysis, integrable discrete maps, solvable lattice models, integrable quantum systems",
                },
            },
        },
        .{
            .name = "Nuclear Experiment",
            .id = "nucl-ex",
            .categories = &[_]Category{
                .{
                    .name = "nucl-ex",
                    .id = "Nuclear Experiment",
                    .description = "Nuclear Experiment Results from experimental nuclear physics including the areas of fundamental interactions, measurements at low- and medium-energy, as well as relativistic heavy-ion collisions. Does not include: detectors and instrumentation nor analysis methods to conduct experiments; descriptions of experimental programs (present or future); comments on published results",
                },
            },
        },
        .{
            .name = "Nuclear Theory",
            .id = "nucl-th",
            .categories = &[_]Category{
                .{
                    .name = "nucl-th",
                    .id = "Nuclear Theory",
                    .description = "Nuclear Theory Theory of nuclear structure covering wide area from models of hadron structure to neutron stars. Nuclear equation of states at different external conditions. Theory of nuclear reactions including heavy-ion reactions at low and high energies. It does not include problems of data analysis, physics of nuclear reactors, problems of safety, reactor construction",
                },
            },
        },
        .{
            .name = "Physics",
            .id = "physics",
            .categories = &[_]Category{
                .{
                    .name = "physics.acc-ph",
                    .id = "Accelerator Physics",
                    .description = "Accelerator theory and simulation. Accelerator technology. Accelerator experiments. Beam Physics. Accelerator design and optimization. Advanced accelerator concepts. Radiation sources including synchrotron light sources and free electron lasers. Applications of accelerators.",
                },
                .{
                    .name = "physics.ao-ph",
                    .id = "Atmospheric and Oceanic Physics",
                    .description = "Atmospheric and oceanic physics and physical chemistry, biogeophysics, and climate science",
                },
                .{
                    .name = "physics.app-ph",
                    .id = "Applied Physics",
                    .description = "Applications of physics to new technology, including electronic devices, optics, photonics, microwaves, spintronics, advanced materials, metamaterials, nanotechnology, and energy sciences.",
                },
                .{
                    .name = "physics.atm-clus",
                    .id = "Atomic and Molecular Clusters",
                    .description = "Atomic and molecular clusters, nanoparticles: geometric, electronic, optical, chemical, magnetic properties, shell structure, phase transitions, optical spectroscopy, mass spectrometry, photoelectron spectroscopy, ionization potential, electron affinity, interaction with intense light pulses, electron diffraction, light scattering, ab initio calculations, DFT theory, fragmentation, Coulomb explosion, hydrodynamic expansion.",
                },
                .{
                    .name = "physics.atom-ph",
                    .id = "Atomic Physics",
                    .description = "Atomic and molecular structure, spectra, collisions, and data. Atoms and molecules in external fields. Molecular dynamics and coherent and optical control. Cold atoms and molecules. Cold collisions. Optical lattices.",
                },
                .{
                    .name = "physics.bio-ph",
                    .id = "Biological Physics",
                    .description = "Molecular biophysics, cellular biophysics, neurological biophysics, membrane biophysics, single-molecule biophysics, ecological biophysics, quantum phenomena in biological systems (quantum biophysics), theoretical biophysics, molecular dynamics/modeling and simulation, game theory, biomechanics, bioinformatics, microorganisms, virology, evolution, biophysical methods.",
                },
                .{
                    .name = "physics.chem-ph",
                    .id = "Chemical Physics",
                    .description = "Experimental, computational, and theoretical physics of atoms, molecules, and clusters - Classical and quantum description of states, processes, and dynamics; spectroscopy, electronic structure, conformations, reactions, interactions, and phases. Chemical thermodynamics. Disperse systems. High pressure chemistry. Solid state chemistry. Surface and interface chemistry.",
                },
                .{
                    .name = "physics.class-ph",
                    .id = "Classical Physics",
                    .description = "Newtonian and relativistic dynamics; many particle systems; planetary motions; chaos in classical dynamics. Maxwell's equations and dynamics of charged systems and electromagnetic forces in materials. Vibrating systems such as membranes and cantilevers; optomechanics. Classical waves, including acoustics and elasticity; physics of music and musical instruments. Classical thermodynamics and heat flow problems.",
                },
                .{
                    .name = "physics.comp-ph",
                    .id = "Computational Physics",
                    .description = "All aspects of computational science applied to physics.",
                },
                .{
                    .name = "physics.data-an",
                    .id = "Data Analysis, Statistics and Probability",
                    .description = "Methods, software and hardware for physics data analysis: data processing and storage; measurement methodology; statistical and mathematical aspects such as parametrization and uncertainties.",
                },
                .{
                    .name = "physics.ed-ph",
                    .id = "Physics Education",
                    .description = "Report of results of a research study, laboratory experience, assessment or classroom practice that represents a way to improve teaching and learning in physics. Also, report on misconceptions of students, textbook errors, and other similar information relative to promoting physics understanding.",
                },
                .{
                    .name = "physics.flu-dyn",
                    .id = "Fluid Dynamics",
                    .description = "Turbulence, instabilities, incompressible/compressible flows, reacting flows. Aero/hydrodynamics, fluid-structure interactions, acoustics. Biological fluid dynamics, micro/nanofluidics, interfacial phenomena. Complex fluids, suspensions and granular flows, porous media flows. Geophysical flows, thermoconvective and stratified flows. Mathematical and computational methods for fluid dynamics, fluid flow models, experimental techniques.",
                },
                .{
                    .name = "physics.gen-ph",
                    .id = "General Physics",
                    .description = "Description coming soon",
                },
                .{
                    .name = "physics.geo-ph",
                    .id = "Geophysics",
                    .description = "Atmospheric physics. Biogeosciences. Computational geophysics. Geographic location. Geoinformatics. Geophysical techniques. Hydrospheric geophysics. Magnetospheric physics. Mathematical geophysics. Planetology. Solar system. Solid earth geophysics. Space plasma physics. Mineral physics. High pressure physics.",
                },
                .{
                    .name = "physics.hist-ph",
                    .id = "History and Philosophy of Physics",
                    .description = "History and philosophy of all branches of physics, astrophysics, and cosmology, including appreciations of physicists.",
                },
                .{
                    .name = "physics.ins-det",
                    .id = "Instrumentation and Detectors",
                    .description = "Instrumentation and Detectors for research in natural science, including optical, molecular, atomic, nuclear and particle physics instrumentation and the associated electronics, services, infrastructure and control equipment.",
                },
                .{
                    .name = "physics.med-ph",
                    .id = "Medical Physics",
                    .description = "Radiation therapy. Radiation dosimetry. Biomedical imaging modelling. Reconstruction, processing, and analysis. Biomedical system modelling and analysis. Health physics. New imaging or therapy modalities.",
                },
                .{
                    .name = "physics.optics",
                    .id = "Optics",
                    .description = "Adaptive optics. Astronomical optics. Atmospheric optics. Biomedical optics. Cardinal points. Collimation. Doppler effect. Fiber optics. Fourier optics. Geometrical optics (Gradient index optics. Holography. Infrared optics. Integrated optics. Laser applications. Laser optical systems. Lasers. Light amplification. Light diffraction. Luminescence. Microoptics. Nano optics. Ocean optics. Optical computing. Optical devices. Optical imaging. Optical materials. Optical metrology. Optical microscopy. Optical properties. Optical signal processing. Optical testing techniques. Optical wave propagation. Paraxial optics. Photoabsorption. Photoexcitations. Physical optics. Physiological optics. Quantum optics. Segmented optics. Spectra. Statistical optics. Surface optics. Ultrafast optics. Wave optics. X-ray optics.",
                },
                .{
                    .name = "physics.plasm-ph",
                    .id = "Plasma Physics",
                    .description = "Fundamental plasma physics. Magnetically Confined Plasmas (includes magnetic fusion energy research). High Energy Density Plasmas (inertial confinement plasmas, laser-plasma interactions). Ionospheric, Heliophysical, and Astrophysical plasmas (includes sun and solar system plasmas). Lasers, Accelerators, and Radiation Generation. Low temperature plasmas and plasma applications (include dusty plasmas, semiconductor etching, plasma-based nanotechnology, medical applications). Plasma Diagnostics, Engineering and Enabling Technologies (includes fusion reactor design, heating systems, diagnostics, experimental techniques)",
                },
                .{
                    .name = "physics.pop-ph",
                    .id = "Popular Physics",
                    .description = "Description coming soon",
                },
                .{
                    .name = "physics.soc-ph",
                    .id = "Physics and Society",
                    .description = "Structure, dynamics and collective behavior of societies and groups (human or otherwise). Quantitative analysis of social networks and other complex networks. Physics and engineering of infrastructure and systems of broad societal impact (e.g., energy grids, transportation networks).",
                },
                .{
                    .name = "physics.space-ph",
                    .id = "Space Physics",
                    .description = "Space plasma physics. Heliophysics. Space weather. Planetary magnetospheres, ionospheres and magnetotail. Auroras. Interplanetary space. Cosmic rays. Synchrotron radiation. Radio astronomy.",
                },
            },
        },
        .{
            .name = "Quantum Physics",
            .id = "quant-ph",
            .categories = &[_]Category{
                .{
                    .name = "quant-ph",
                    .id = "Quantum Physics",
                    .description = "Description coming soon",
                },
            },
        },
    },
};
