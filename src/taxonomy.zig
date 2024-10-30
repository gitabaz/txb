pub const Group = struct {
    name: []const u8,
    archives: []const Archive,
};

pub const Archive = struct {
    name: []const u8,
    id: ?[]const u8,
    categories: []const Category,
};

pub const Category = struct {
    name: []const u8,
    id: []const u8,
    description: []const u8,
};

pub const GroupID = enum {
    ComputerScience,
    Economics,
    Eess,
    Mathematics,
    Physics,
    QuantitativeBiology,
    QuantitativeFinance,
    Statistics,
};

pub const groups = &[_]Group{ computer_science, economics, eess, mathematics, physics, quantitative_biology, quantitative_finance, statistics };

pub const computer_science: Group = .{
    .name = "Computer Science",
    .archives = &[_]Archive{
        .{
            .name = "Computer Science",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "cs.AI",
                    .id = "Artificial Intelligence",
                    .description = "Covers all areas of AI except Vision, Robotics, Machine Learning, Multiagent Systems, and Computation and Language (Natural Language Processing), which have separate subject areas. In particular, includes Expert Systems, Theorem Proving (although this may overlap with Logic in Computer Science), Knowledge Representation, Planning, and Uncertainty in AI. Roughly includes material in ACM Subject Classes I.2.0, I.2.1, I.2.3, I.2.4, I.2.8, and I.2.11.",
                },
                .{
                    .name = "cs.AR",
                    .id = "Hardware Architecture",
                    .description = "Covers systems organization and hardware architecture. Roughly includes material in ACM Subject Classes C.0, C.1, and C.5.",
                },
                .{
                    .name = "cs.CC",
                    .id = "Computational Complexity",
                    .description = "Covers models of computation, complexity classes, structural complexity, complexity tradeoffs, upper and lower bounds. Roughly includes material in ACM Subject Classes F.1 (computation by abstract devices), F.2.3 (tradeoffs among complexity measures), and F.4.3 (formal languages), although some material in formal languages may be more appropriate for Logic in Computer Science. Some material in F.2.1 and F.2.2, may also be appropriate here, but is more likely to have Data Structures and Algorithms as the primary subject area.",
                },
                .{
                    .name = "cs.CE",
                    .id = "Computational Engineering, Finance, and Science",
                    .description = "Covers applications of computer science to the mathematical modeling of complex systems in the fields of science, engineering, and finance. Papers here are interdisciplinary and applications-oriented, focusing on techniques and tools that enable challenging computational simulations to be performed, for which the use of supercomputers or distributed computing platforms is often required. Includes material in ACM Subject Classes J.2, J.3, and J.4 (economics).",
                },
                .{
                    .name = "cs.CG",
                    .id = "Computational Geometry",
                    .description = "Roughly includes material in ACM Subject Classes I.3.5 and F.2.2.",
                },
                .{
                    .name = "cs.CL",
                    .id = "Computation and Language",
                    .description = "Covers natural language processing. Roughly includes material in ACM Subject Class I.2.7. Note that work on artificial languages (programming languages, logics, formal systems) that does not explicitly address natural-language issues broadly construed (natural-language processing, computational linguistics, speech, text retrieval, etc.) is not appropriate for this area.",
                },
                .{
                    .name = "cs.CR",
                    .id = "Cryptography and Security",
                    .description = "Covers all areas of cryptography and security including authentication, public key cryptosytems, proof-carrying code, etc. Roughly includes material in ACM Subject Classes D.4.6 and E.3.",
                },
                .{
                    .name = "cs.CV",
                    .id = "Computer Vision and Pattern Recognition",
                    .description = "Covers image processing, computer vision, pattern recognition, and scene understanding. Roughly includes material in ACM Subject Classes I.2.10, I.4, and I.5.",
                },
                .{
                    .name = "cs.CY",
                    .id = "Computers and Society",
                    .description = "Covers impact of computers on society, computer ethics, information technology and public policy, legal aspects of computing, computers and education. Roughly includes material in ACM Subject Classes K.0, K.2, K.3, K.4, K.5, and K.7.",
                },
                .{
                    .name = "cs.DB",
                    .id = "Databases",
                    .description = "Covers database management, datamining, and data processing. Roughly includes material in ACM Subject Classes E.2, E.5, H.0, H.2, and J.1.",
                },
                .{
                    .name = "cs.DC",
                    .id = "Distributed, Parallel, and Cluster Computing",
                    .description = "Covers fault-tolerance, distributed algorithms, stabilility, parallel computation, and cluster computing. Roughly includes material in ACM Subject Classes C.1.2, C.1.4, C.2.4, D.1.3, D.4.5, D.4.7, E.1.",
                },
                .{
                    .name = "cs.DL",
                    .id = "Digital Libraries",
                    .description = "Covers all aspects of the digital library design and document and text creation. Note that there will be some overlap with Information Retrieval (which is a separate subject area). Roughly includes material in ACM Subject Classes H.3.5, H.3.6, H.3.7, I.7.",
                },
                .{
                    .name = "cs.DM",
                    .id = "Discrete Mathematics",
                    .description = "Covers combinatorics, graph theory, applications of probability. Roughly includes material in ACM Subject Classes G.2 and G.3.",
                },
                .{
                    .name = "cs.DS",
                    .id = "Data Structures and Algorithms",
                    .description = "Covers data structures and analysis of algorithms. Roughly includes material in ACM Subject Classes E.1, E.2, F.2.1, and F.2.2.",
                },
                .{
                    .name = "cs.ET",
                    .id = "Emerging Technologies",
                    .description = "Covers approaches to information processing (computing, communication, sensing) and bio-chemical analysis based on alternatives to silicon CMOS-based technologies, such as nanoscale electronic, photonic, spin-based, superconducting, mechanical, bio-chemical and quantum technologies (this list is not exclusive). Topics of interest include (1) building blocks for emerging technologies, their scalability and adoption in larger systems, including integration with traditional technologies, (2) modeling, design and optimization of novel devices and systems, (3) models of computation, algorithm design and programming for emerging technologies.",
                },
                .{
                    .name = "cs.FL",
                    .id = "Formal Languages and Automata Theory",
                    .description = "Covers automata theory, formal language theory, grammars, and combinatorics on words. This roughly corresponds to ACM Subject Classes F.1.1, and F.4.3. Papers dealing with computational complexity should go to cs.CC; papers dealing with logic should go to cs.LO.",
                },
                .{
                    .name = "cs.GL",
                    .id = "General Literature",
                    .description = "Covers introductory material, survey material, predictions of future trends, biographies, and miscellaneous computer-science related material. Roughly includes all of ACM Subject Class A, except it does not include conference proceedings (which will be listed in the appropriate subject area).",
                },
                .{
                    .name = "cs.GR",
                    .id = "Graphics",
                    .description = "Covers all aspects of computer graphics. Roughly includes material in all of ACM Subject Class I.3, except that I.3.5 is is likely to have Computational Geometry as the primary subject area.",
                },
                .{
                    .name = "cs.GT",
                    .id = "Computer Science and Game Theory",
                    .description = "Covers all theoretical and applied aspects at the intersection of computer science and game theory, including work in mechanism design, learning in games (which may overlap with Learning), foundations of agent modeling in games (which may overlap with Multiagent systems), coordination, specification and formal methods for non-cooperative computational environments. The area also deals with applications of game theory to areas such as electronic commerce.",
                },
                .{
                    .name = "cs.HC",
                    .id = "Human-Computer Interaction",
                    .description = "Covers human factors, user interfaces, and collaborative computing. Roughly includes material in ACM Subject Classes H.1.2 and all of H.5, except for H.5.1, which is more likely to have Multimedia as the primary subject area.",
                },
                .{
                    .name = "cs.IR",
                    .id = "Information Retrieval",
                    .description = "Covers indexing, dictionaries, retrieval, content and analysis. Roughly includes material in ACM Subject Classes H.3.0, H.3.1, H.3.2, H.3.3, and H.3.4.",
                },
                .{
                    .name = "cs.IT",
                    .id = "Information Theory",
                    .description = "Covers theoretical and experimental aspects of information theory and coding. Includes material in ACM Subject Class E.4 and intersects with H.1.1.",
                },
                .{
                    .name = "cs.LG",
                    .id = "Machine Learning",
                    .description = "Papers on all aspects of machine learning research (supervised, unsupervised, reinforcement learning, bandit problems, and so on) including also robustness, explanation, fairness, and methodology. cs.LG is also an appropriate primary category for applications of machine learning methods.",
                },
                .{
                    .name = "cs.LO",
                    .id = "Logic in Computer Science",
                    .description = "Covers all aspects of logic in computer science, including finite model theory, logics of programs, modal logic, and program verification. Programming language semantics should have Programming Languages as the primary subject area. Roughly includes material in ACM Subject Classes D.2.4, F.3.1, F.4.0, F.4.1, and F.4.2; some material in F.4.3 (formal languages) may also be appropriate here, although Computational Complexity is typically the more appropriate subject area.",
                },
                .{
                    .name = "cs.MA",
                    .id = "Multiagent Systems",
                    .description = "Covers multiagent systems, distributed artificial intelligence, intelligent agents, coordinated interactions. and practical applications. Roughly covers ACM Subject Class I.2.11.",
                },
                .{
                    .name = "cs.MM",
                    .id = "Multimedia",
                    .description = "Roughly includes material in ACM Subject Class H.5.1.",
                },
                .{
                    .name = "cs.MS",
                    .id = "Mathematical Software",
                    .description = "Roughly includes material in ACM Subject Class G.4.",
                },
                .{
                    .name = "cs.NA",
                    .id = "Numerical Analysis",
                    .description = "cs.NA is an alias for math.NA. Roughly includes material in ACM Subject Class G.1.",
                },
                .{
                    .name = "cs.NE",
                    .id = "Neural and Evolutionary Computing",
                    .description = "Covers neural networks, connectionism, genetic algorithms, artificial life, adaptive behavior. Roughly includes some material in ACM Subject Class C.1.3, I.2.6, I.5.",
                },
                .{
                    .name = "cs.NI",
                    .id = "Networking and Internet Architecture",
                    .description = "Covers all aspects of computer communication networks, including network architecture and design, network protocols, and internetwork standards (like TCP/IP). Also includes topics, such as web caching, that are directly relevant to Internet architecture and performance. Roughly includes all of ACM Subject Class C.2 except C.2.4, which is more likely to have Distributed, Parallel, and Cluster Computing as the primary subject area.",
                },
                .{
                    .name = "cs.OH",
                    .id = "Other Computer Science",
                    .description = "This is the classification to use for documents that do not fit anywhere else.",
                },
                .{
                    .name = "cs.OS",
                    .id = "Operating Systems",
                    .description = "Roughly includes material in ACM Subject Classes D.4.1, D.4.2., D.4.3, D.4.4, D.4.5, D.4.7, and D.4.9.",
                },
                .{
                    .name = "cs.PF",
                    .id = "Performance",
                    .description = "Covers performance measurement and evaluation, queueing, and simulation. Roughly includes material in ACM Subject Classes D.4.8 and K.6.2.",
                },
                .{
                    .name = "cs.PL",
                    .id = "Programming Languages",
                    .description = "Covers programming language semantics, language features, programming approaches (such as object-oriented programming, functional programming, logic programming). Also includes material on compilers oriented towards programming languages; other material on compilers may be more appropriate in Architecture (AR). Roughly includes material in ACM Subject Classes D.1 and D.3.",
                },
                .{
                    .name = "cs.RO",
                    .id = "Robotics",
                    .description = "Roughly includes material in ACM Subject Class I.2.9.",
                },
                .{
                    .name = "cs.SC",
                    .id = "Symbolic Computation",
                    .description = "Roughly includes material in ACM Subject Class I.1.",
                },
                .{
                    .name = "cs.SD",
                    .id = "Sound",
                    .description = "Covers all aspects of computing with sound, and sound as an information channel. Includes models of sound, analysis and synthesis, audio user interfaces, sonification of data, computer music, and sound signal processing. Includes ACM Subject Class H.5.5, and intersects with H.1.2, H.5.1, H.5.2, I.2.7, I.5.4, I.6.3, J.5, K.4.2.",
                },
                .{
                    .name = "cs.SE",
                    .id = "Software Engineering",
                    .description = "Covers design tools, software metrics, testing and debugging, programming environments, etc. Roughly includes material in all of ACM Subject Classes D.2, except that D.2.4 (program verification) should probably have Logics in Computer Science as the primary subject area.",
                },
                .{
                    .name = "cs.SI",
                    .id = "Social and Information Networks",
                    .description = "Covers the design, analysis, and modeling of social and information networks, including their applications for on-line information access, communication, and interaction, and their roles as datasets in the exploration of questions in these and other domains, including connections to the social and biological sciences. Analysis and modeling of such networks includes topics in ACM Subject classes F.2, G.2, G.3, H.2, and I.2; applications in computing include topics in H.3, H.4, and H.5; and applications at the interface of computing and other disciplines include topics in J.1--J.7. Papers on computer communication systems and network protocols (e.g. TCP/IP) are generally a closer fit to the Networking and Internet Architecture (cs.NI) category.",
                },
                .{
                    .name = "cs.SY",
                    .id = "Systems and Control",
                    .description = "cs.SY is an alias for eess.SY. This section includes theoretical and experimental research covering all facets of automatic control systems. The section is focused on methods of control system analysis and design using tools of modeling, simulation and optimization. Specific areas of research include nonlinear, distributed, adaptive, stochastic and robust control in addition to hybrid and discrete event systems. Application areas include automotive and aerospace control systems, network control, biological systems, multiagent and cooperative control, robotics, reinforcement learning, sensor networks, control of cyber-physical and energy-related systems, and control of computing systems.",
                },
            },
        },
    },
};

pub const economics: Group = .{
    .name = "Economics",
    .archives = &[_]Archive{
        .{
            .name = "Economics",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "econ.EM",
                    .id = "Econometrics",
                    .description = "Econometric Theory, Micro-Econometrics, Macro-Econometrics, Empirical Content of Economic Relations discovered via New Methods, Methodological Aspects of the Application of Statistical Inference to Economic Data.",
                },
                .{
                    .name = "econ.GN",
                    .id = "General Economics",
                    .description = "General methodological, applied, and empirical contributions to economics.",
                },
                .{
                    .name = "econ.TH",
                    .id = "Theoretical Economics",
                    .description = "Includes theoretical contributions to Contract Theory, Decision Theory, Game Theory, General Equilibrium, Growth, Learning and Evolution, Macroeconomics, Market and Mechanism Design, and Social Choice.",
                },
            },
        },
    },
};

pub const eess: Group = .{
    .name = "Electrical Engineering and Systems Science",
    .archives = &[_]Archive{
        .{
            .name = "Electrical Engineering and Systems Science",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "eess.AS",
                    .id = "Audio and Speech Processing",
                    .description = "Theory and methods for processing signals representing audio, speech, and language, and their applications. This includes analysis, synthesis, enhancement, transformation, classification and interpretation of such signals as well as the design, development, and evaluation of associated signal processing systems. Machine learning and pattern analysis applied to any of the above areas is also welcome. Specific topics of interest include: auditory modeling and hearing aids; acoustic beamforming and source localization; classification of acoustic scenes; speaker separation; active noise control and echo cancellation; enhancement; de-reverberation; bioacoustics; music signals analysis, synthesis and modification; music information retrieval; audio for multimedia and joint audio-video processing; spoken and written language modeling, segmentation, tagging, parsing, understanding, and translation; text mining; speech production, perception, and psychoacoustics; speech analysis, synthesis, and perceptual modeling and coding; robust speech recognition; speaker recognition and characterization; deep learning, online learning, and graphical models applied to speech, audio, and language signals; and implementation aspects ranging from system architecture to fast algorithms.",
                },
                .{
                    .name = "eess.IV",
                    .id = "Image and Video Processing",
                    .description = "Theory, algorithms, and architectures for the formation, capture, processing, communication, analysis, and display of images, video, and multidimensional signals in a wide variety of applications. Topics of interest include: mathematical, statistical, and perceptual image and video modeling and representation; linear and nonlinear filtering, de-blurring, enhancement, restoration, and reconstruction from degraded, low-resolution or tomographic data; lossless and lossy compression and coding; segmentation, alignment, and recognition; image rendering, visualization, and printing; computational imaging, including ultrasound, tomographic and magnetic resonance imaging; and image and video analysis, synthesis, storage, search and retrieval.",
                },
                .{
                    .name = "eess.SP",
                    .id = "Signal Processing",
                    .description = "Theory, algorithms, performance analysis and applications of signal and data analysis, including physical modeling, processing, detection and parameter estimation, learning, mining, retrieval, and information extraction. The term \"signal\" includes speech, audio, sonar, radar, geophysical, physiological, (bio-) medical, image, video, and multimodal natural and man-made signals, including communication signals and data. Topics of interest include: statistical signal processing, spectral estimation and system identification; filter design, adaptive filtering / stochastic learning; (compressive) sampling, sensing, and transform-domain methods including fast algorithms; signal processing for machine learning and machine learning for signal processing applications; in-network and graph signal processing; convex and nonconvex optimization methods for signal processing applications; radar, sonar, and sensor array beamforming and direction finding; communications signal processing; low power, multi-core and system-on-chip signal processing; sensing, communication, analysis and optimization for cyber-physical systems such as power grids and the Internet of Things.",
                },
                .{
                    .name = "eess.SY",
                    .id = "Systems and Control",
                    .description = "This section includes theoretical and experimental research covering all facets of automatic control systems. The section is focused on methods of control system analysis and design using tools of modeling, simulation and optimization. Specific areas of research include nonlinear, distributed, adaptive, stochastic and robust control in addition to hybrid and discrete event systems. Application areas include automotive and aerospace control systems, network control, biological systems, multiagent and cooperative control, robotics, reinforcement learning, sensor networks, control of cyber-physical and energy-related systems, and control of computing systems.",
                },
            },
        },
    },
};

pub const mathematics: Group = .{
    .name = "Mathematics",
    .archives = &[_]Archive{
        .{
            .name = "Mathematics",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "math.AC",
                    .id = "Commutative Algebra",
                    .description = "Commutative rings, modules, ideals, homological algebra, computational aspects, invariant theory, connections to algebraic geometry and combinatorics",
                },
                .{
                    .name = "math.AG",
                    .id = "Algebraic Geometry",
                    .description = "Algebraic varieties, stacks, sheaves, schemes, moduli spaces, complex geometry, quantum cohomology",
                },
                .{
                    .name = "math.AP",
                    .id = "Analysis of PDEs",
                    .description = "Existence and uniqueness, boundary conditions, linear and non-linear operators, stability, soliton theory, integrable PDE's, conservation laws, qualitative dynamics",
                },
                .{
                    .name = "math.AT",
                    .id = "Algebraic Topology",
                    .description = "Homotopy theory, homological algebra, algebraic treatments of manifolds",
                },
                .{
                    .name = "math.CA",
                    .id = "Classical Analysis and ODEs",
                    .description = "Special functions, orthogonal polynomials, harmonic analysis, ODE's, differential relations, calculus of variations, approximations, expansions, asymptotics",
                },
                .{
                    .name = "math.CO",
                    .id = "Combinatorics",
                    .description = "Discrete mathematics, graph theory, enumeration, combinatorial optimization, Ramsey theory, combinatorial game theory",
                },
                .{
                    .name = "math.CT",
                    .id = "Category Theory",
                    .description = "Enriched categories, topoi, abelian categories, monoidal categories, homological algebra",
                },
                .{
                    .name = "math.CV",
                    .id = "Complex Variables",
                    .description = "Holomorphic functions, automorphic group actions and forms, pseudoconvexity, complex geometry, analytic spaces, analytic sheaves",
                },
                .{
                    .name = "math.DG",
                    .id = "Differential Geometry",
                    .description = "Complex, contact, Riemannian, pseudo-Riemannian and Finsler geometry, relativity, gauge theory, global analysis",
                },
                .{
                    .name = "math.DS",
                    .id = "Dynamical Systems",
                    .description = "Dynamics of differential equations and flows, mechanics, classical few-body problems, iterations, complex dynamics, delayed differential equations",
                },
                .{
                    .name = "math.FA",
                    .id = "Functional Analysis",
                    .description = "Banach spaces, function spaces, real functions, integral transforms, theory of distributions, measure theory",
                },
                .{
                    .name = "math.GM",
                    .id = "General Mathematics",
                    .description = "Mathematical material of general interest, topics not covered elsewhere",
                },
                .{
                    .name = "math.GN",
                    .id = "General Topology",
                    .description = "Continuum theory, point-set topology, spaces with algebraic structure, foundations, dimension theory, local and global properties",
                },
                .{
                    .name = "math.GR",
                    .id = "Group Theory",
                    .description = "Finite groups, topological groups, representation theory, cohomology, classification and structure",
                },
                .{
                    .name = "math.GT",
                    .id = "Geometric Topology",
                    .description = "Manifolds, orbifolds, polyhedra, cell complexes, foliations, geometric structures",
                },
                .{
                    .name = "math.HO",
                    .id = "History and Overview",
                    .description = "Biographies, philosophy of mathematics, mathematics education, recreational mathematics, communication of mathematics, ethics in mathematics",
                },
                .{
                    .name = "math.IT",
                    .id = "Information Theory",
                    .description = "math.IT is an alias for cs.IT. Covers theoretical and experimental aspects of information theory and coding.",
                },
                .{
                    .name = "math.KT",
                    .id = "K-Theory and Homology",
                    .description = "Algebraic and topological K-theory, relations with topology, commutative algebra, and operator algebras",
                },
                .{
                    .name = "math.LO",
                    .id = "Logic",
                    .description = "Logic, set theory, point-set topology, formal mathematics",
                },
                .{
                    .name = "math.MG",
                    .id = "Metric Geometry",
                    .description = "Euclidean, hyperbolic, discrete, convex, coarse geometry, comparisons in Riemannian geometry, symmetric spaces",
                },
                .{
                    .name = "math.MP",
                    .id = "Mathematical Physics",
                    .description = "math.MP is an alias for math-ph. Articles in this category focus on areas of research that illustrate the application of mathematics to problems in physics, develop mathematical methods for such applications, or provide mathematically rigorous formulations of existing physical theories. Submissions to math-ph should be of interest to both physically oriented mathematicians and mathematically oriented physicists; submissions which are primarily of interest to theoretical physicists or to mathematicians should probably be directed to the respective physics/math categories",
                },
                .{
                    .name = "math.NA",
                    .id = "Numerical Analysis",
                    .description = "Numerical algorithms for problems in analysis and algebra, scientific computation",
                },
                .{
                    .name = "math.NT",
                    .id = "Number Theory",
                    .description = "Prime numbers, diophantine equations, analytic number theory, algebraic number theory, arithmetic geometry, Galois theory",
                },
                .{
                    .name = "math.OA",
                    .id = "Operator Algebras",
                    .description = "Algebras of operators on Hilbert space, C^*-algebras, von Neumann algebras, non-commutative geometry",
                },
                .{
                    .name = "math.OC",
                    .id = "Optimization and Control",
                    .description = "Operations research, linear programming, control theory, systems theory, optimal control, game theory",
                },
                .{
                    .name = "math.PR",
                    .id = "Probability",
                    .description = "Theory and applications of probability and stochastic processes: e.g. central limit theorems, large deviations, stochastic differential equations, models from statistical mechanics, queuing theory",
                },
                .{
                    .name = "math.QA",
                    .id = "Quantum Algebra",
                    .description = "Quantum groups, skein theories, operadic and diagrammatic algebra, quantum field theory",
                },
                .{
                    .name = "math.RA",
                    .id = "Rings and Algebras",
                    .description = "Non-commutative rings and algebras, non-associative algebras, universal algebra and lattice theory, linear algebra, semigroups",
                },
                .{
                    .name = "math.RT",
                    .id = "Representation Theory",
                    .description = "Linear representations of algebras and groups, Lie theory, associative algebras, multilinear algebra",
                },
                .{
                    .name = "math.SG",
                    .id = "Symplectic Geometry",
                    .description = "Hamiltonian systems, symplectic flows, classical integrable systems",
                },
                .{
                    .name = "math.SP",
                    .id = "Spectral Theory",
                    .description = "Schrodinger operators, operators on manifolds, general differential operators, numerical studies, integral operators, discrete models, resonances, non-self-adjoint operators, random operators/matrices",
                },
                .{
                    .name = "math.ST",
                    .id = "Statistics Theory",
                    .description = "Applied, computational and theoretical statistics: e.g. statistical inference, regression, time series, multivariate analysis, data analysis, Markov chain Monte Carlo, design of experiments, case studies",
                },
            },
        },
    },
};

pub const physics: Group = .{
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

pub const quantitative_biology: Group = .{
    .name = "Quantitative Biology",
    .archives = &[_]Archive{
        .{
            .name = "Quantitative Biology",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "q-bio.BM",
                    .id = "Biomolecules",
                    .description = "DNA, RNA, proteins, lipids, etc.; molecular structures and folding kinetics; molecular interactions; single-molecule manipulation.",
                },
                .{
                    .name = "q-bio.CB",
                    .id = "Cell Behavior",
                    .description = "Cell-cell signaling and interaction; morphogenesis and development; apoptosis; bacterial conjugation; viral-host interaction; immunology",
                },
                .{
                    .name = "q-bio.GN",
                    .id = "Genomics",
                    .description = "DNA sequencing and assembly; gene and motif finding; RNA editing and alternative splicing; genomic structure and processes (replication, transcription, methylation, etc); mutational processes.",
                },
                .{
                    .name = "q-bio.MN",
                    .id = "Molecular Networks",
                    .description = "Gene regulation, signal transduction, proteomics, metabolomics, gene and enzymatic networks",
                },
                .{
                    .name = "q-bio.NC",
                    .id = "Neurons and Cognition",
                    .description = "Synapse, cortex, neuronal dynamics, neural network, sensorimotor control, behavior, attention",
                },
                .{
                    .name = "q-bio.OT",
                    .id = "Other Quantitative Biology",
                    .description = "Work in quantitative biology that does not fit into the other q-bio classifications",
                },
                .{
                    .name = "q-bio.PE",
                    .id = "Populations and Evolution",
                    .description = "Population dynamics, spatio-temporal and epidemiological models, dynamic speciation, co-evolution, biodiversity, foodwebs, aging; molecular evolution and phylogeny; directed evolution; origin of life",
                },
                .{
                    .name = "q-bio.QM",
                    .id = "Quantitative Methods",
                    .description = "All experimental, numerical, statistical and mathematical contributions of value to biology",
                },
                .{
                    .name = "q-bio.SC",
                    .id = "Subcellular Processes",
                    .description = "Assembly and control of subcellular structures (channels, organelles, cytoskeletons, capsules, etc.); molecular motors, transport, subcellular localization; mitosis and meiosis",
                },
                .{
                    .name = "q-bio.TO",
                    .id = "Tissues and Organs",
                    .description = "Blood flow in vessels, biomechanics of bones, electrical waves, endocrine system, tumor growth",
                },
            },
        },
    },
};

pub const quantitative_finance: Group = .{
    .name = "Quantitative Finance",
    .archives = &[_]Archive{
        .{
            .name = "Quantitative Finance",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "q-fin.CP",
                    .id = "Computational Finance",
                    .description = "Computational methods, including Monte Carlo, PDE, lattice and other numerical methods with applications to financial modeling",
                },
                .{
                    .name = "q-fin.EC",
                    .id = "Economics",
                    .description = "q-fin.EC is an alias for econ.GN. Economics, including micro and macro economics, international economics, theory of the firm, labor economics, and other economic topics outside finance",
                },
                .{
                    .name = "q-fin.GN",
                    .id = "General Finance",
                    .description = "Development of general quantitative methodologies with applications in finance",
                },
                .{
                    .name = "q-fin.MF",
                    .id = "Mathematical Finance",
                    .description = "Mathematical and analytical methods of finance, including stochastic, probabilistic and functional analysis, algebraic, geometric and other methods",
                },
                .{
                    .name = "q-fin.PM",
                    .id = "Portfolio Management",
                    .description = "Security selection and optimization, capital allocation, investment strategies and performance measurement",
                },
                .{
                    .name = "q-fin.PR",
                    .id = "Pricing of Securities",
                    .description = "Valuation and hedging of financial securities, their derivatives, and structured products",
                },
                .{
                    .name = "q-fin.RM",
                    .id = "Risk Management",
                    .description = "Measurement and management of financial risks in trading, banking, insurance, corporate and other applications",
                },
                .{
                    .name = "q-fin.ST",
                    .id = "Statistical Finance",
                    .description = "Statistical, econometric and econophysics analyses with applications to financial markets and economic data",
                },
                .{
                    .name = "q-fin.TR",
                    .id = "Trading and Market Microstructure",
                    .description = "Market microstructure, liquidity, exchange and auction design, automated trading, agent-based modeling and market-making",
                },
            },
        },
    },
};

pub const statistics: Group = .{
    .name = "Statistics",
    .archives = &[_]Archive{
        .{
            .name = "Statistics",
            .id = null,
            .categories = &[_]Category{
                .{
                    .name = "stat.AP",
                    .id = "Applications",
                    .description = "Biology, Education, Epidemiology, Engineering, Environmental Sciences, Medical, Physical Sciences, Quality Control, Social Sciences",
                },
                .{
                    .name = "stat.CO",
                    .id = "Computation",
                    .description = "Algorithms, Simulation, Visualization",
                },
                .{
                    .name = "stat.ME",
                    .id = "Methodology",
                    .description = "Design, Surveys, Model Selection, Multiple Testing, Multivariate Methods, Signal and Image Processing, Time Series, Smoothing, Spatial Statistics, Survival Analysis, Nonparametric and Semiparametric Methods",
                },
                .{
                    .name = "stat.ML",
                    .id = "Machine Learning",
                    .description = "Covers machine learning papers (supervised, unsupervised, semi-supervised learning, graphical models, reinforcement learning, bandits, high dimensional inference, etc.) with a statistical or theoretical grounding",
                },
                .{
                    .name = "stat.OT",
                    .id = "Other Statistics",
                    .description = "Work in statistics that does not fit into the other stat classifications",
                },
                .{
                    .name = "stat.TH",
                    .id = "Statistics Theory",
                    .description = "stat.TH is an alias for math.ST. Asymptotics, Bayesian Inference, Decision Theory, Estimation, Foundations, Inference, Testing.",
                },
            },
        },
    },
};
