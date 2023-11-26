/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
KPLIB_b_fobBox = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
KPLIB_b_fobTruck = "PRACS_M250_Salvage";                                // This is the FOB as a vehicle.
KPLIB_b_arsenal = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = "PRACS_M250_AMB";                        // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01 = "PRACS_CH53";                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit = "PRACS_Tank_Crewman";                                         // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit = "PRACS_Heli_pilot";                                      // This defines the pilot for helicopters.
KPLIB_b_addHeli = "PRACS_UH1H";              // These are the little birds which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat = "PRACS_Zodiac";                 // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck = "PRACS_M250_open";               // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KPLIB_b_largeStorage = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KPLIB_b_logiStation = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl = "B_Radar_System_01_F";             // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KPLIB_b_crateFuel = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
    ["PRACS_Infantry",20,0,0],                                          // Rifleman
	["PRACS_Infantry_RKT",25,0,0],                                      // Rifleman (RKT)
    ["PRACS_Infantry_LAT",30,0,0],                                      // Rifleman (AT)
    ["PRACS_Infantry_GRE",25,0,0],                                      // Grenadier
    ["PRACS_Infantry_MMG",25,0,0],                                      // Autorifleman
    ["PRACS_Infantry_MG",35,0,0],                                       // Heavygunner
    ["PRACS_Infantry_M",30,0,0],                                        // Marksman
    ["PRACS_Infantry_SHTR",40,0,0],                                     // Sharpshooter
    ["PRACS_Infantry_AT",50,10,0],                                      // AT Specialist
    ["PRACS_Infantry_AA",50,10,0],                                      // AA Specialist
    ["PRACS_Infantry_Medic",30,0,0],                                    // Combat Life Saver
    ["PRACS_Infantry_ENG",30,0,0],                                      // Engineer
    ["PRACS_Infantry_Scout",20,0,0],                                    // Recon Scout
    ["PRACS_Commando",30,0,0],                                          // SF Commando
    ["PRACS_Commando_M",30,0,0],                                        // SF Marksman
    ["PRACS_Commando_SHTR",40,0,0],                                     // SF Sharpshooter
    ["PRACS_Commando_Medic",30,0,0],                                    // SF Paramedic
    ["PRACS_Commando_RRM",30,0,0],                                      // SF Recoilless Rifle
	["PRACS_Fusilier",25,0,0],                                          // Fusilier
	["PRACS_Fusilier_GRE",30,0,0],                                      // Fusilier Grenadier
	["PRACS_Fusilier_M",35,0,0],                                        // Fusilier Marksman
	["PRACS_Fusilier_MG",30,0,0],                                       // Fusilier Machinegunner
    ["PRACS_Fusilier_SPR",70,5,0],                                      // Fusilier Sniper
    ["PRACS_Infantry_RTO",20,0,0],                                      // Spotter
    ["PRACS_Tank_Crewman",10,0,0],                                      // Crewman
    ["PRACS_Paratrooper",20,0,0],                                       // Para Trooper
    ["PRACS_air_crew",10,0,0],                                          // Helicopter Crew
    ["PRACS_Heli_pilot",10,0,0],                                        // Helicopter Pilot
    ["PRACS_jet_pilot",10,0,0]                                          // Pilot
];

KPLIB_b_vehLight = [
    ["I_Quadbike_01_F",50,0,25],                                        // Quad Bike
    ["PRACS_M1097_Scout",75,0,50],                                      // Humvee Scout
    ["PRACS_M998_Command",75,0,50],                                     // Humvee Command
    ["PRACS_M1025",100,0,50],                                           // Humvee
    ["PRACS_M1025_M2",100,40,50],                                       // Humvee (HMG)
    ["PRACS_M1025_Mk19",100,60,50],                                     // Humvee (GMG)
	["PRACS_M1151_M240",120,20,50],                                     // Humvee AMV (LMG)
    ["PRACS_M1151_M2",120,40,50],                                       // Humvee AMV (HMG)
    ["PRACS_M1151_Mk19",120,60,50],                                     // Humvee AMV (GMG)
	["PRACS_M1165_M134_QSB",140,100,50],                                // Humvee Griswold (Minigun)
    ["PRACS_M1165_M2",140,40,50],                                       // Humvee Griswold (HMG)
    ["PRACS_M1165_Mk19",140,60,50],                                     // Humvee Griswold (GMG)
	["PRACS_M966_TOW",120,100,50],                                      // Humvee TOW
    ["PRACS_M998_cargo_open",100,0,60],                                 // Humvee Cargo (Open)
	["PRACS_M998_cargo_topped",100,0,60],                               // Humvee Cargo (Top)
    ["PRACS_M250",125,0,75],                                            // M250 Transport
    ["PRACS_M250_open",125,0,75],                                       // HEMTT Transport (Open)
    ["PRACS_M250_flat_bed",125,0,75],                                   // HEMTT Transport (Open)
    ["PRACS_Zodiac",100,0,25],                                          // Zodiac
    ["PRACS_Mk5_SOCR",250,200,100],                                     // Mk.V Boat
    ["I_SDV_01_F",150,0,50]                                             // SDV
];

KPLIB_b_vehHeavy = [
    ["PRACS_M113_M240",200,20,100],                                     // M113A3 (M240)
	["PRACS_M113_M2",200,40,100],                                       // M113A3 (M2)
    ["PRACS_M113_mk19",200,60,100],                                     // M113A3 (Mk19)
    ["PRACS_M113_MED",200,0,100],                                       // M113A3 (Medical)
	["PRACS_M577",200,0,100],                                           // M577 (HQ)
	["PRACS_M1117",220,40,125],                                         // M1117 Guardian
	["PRACS_BMR_HQ",250,40,125],                                        // BMR-600 (HQ)
	["PRACS_BMR_AMB",250,40,125],                                       // BMR-600 (Medical)
    ["PRACS_BMR_M2",250,40,125],                                        // BMR-600 (M2)
	["PRACS_BMR_ATGM",250,100,125],                                     // BMR-600 (ATGM)
	["PRACS_BMR_ATGM_TOW",250,100,125],                                 // BMR-600 (TOW)
    ["PRACS_BMR_A3_M2",260,40,125],                                     // BMR-600A3 (M2)
	["PRACS_BMR_A3_GA1",260,50,125],                                    // BMR-600A3 (GA1 20mm)
	["PRACS_BMR_A3_M3_SFOD",260,50,125],                                // BMR-600A3 (M3 SFOD)
	["PRACS_BMR_A3_Mk19",260,60,125],                                   // BMR-600A3 (Mk19)
    ["PRACS_Pizarro",300,200,150],                                      // ASCOD Pizarro
	["PRACS_VEC_M242",300,100,150],                                     // VEC-M1
	["PRACS_VEC_MGS",300,150,150],                                      // VEC-MGS
	["PRACS_FV101",300,200,150],                                        // FV101 Scorpion
	["PRACS_FV107",300,300,150],                                        // FV107 Scimitar
	["PRACS_M163_VADS",300,250,175],                                    // M163 VADS
	["PRACS_M163_PIVADS",300,250,175],                                  // M163 PIVADS
	["PRACS_M163_MACHBET",300,300,175],                                 // M163 Machbet
	["PRACS_m48_chapparal",300,300,150],                                // M48 Chapparal
    ["PRACS_M60A3",400,300,200],                                        // M60A3 Patton
    ["PRACS_M60S",400,350,200],                                         // M60S Pantera
    ["PRACS_M1A1_AIM",500,400,250],                                     // M1A1 Sahrani Lion
    ["PRACS_M109A6",600,1250,300],                                      // M109A6-S Paladin
	["PRACS_M430",600,1800,300],                                        // M430L SMLRS
    ["PRACS_M270",800,1750,400],                                         // M270 MLRS,
	["PRACS_M727_IHAWK",600,1800,300],                                  // M727 I-HAWK
	["PRACS_M727_SEM_IHAWK",600,1800,300],                              // M727 SEM I-HAWK
    ["PRACS_M548_MPG64",600,400,300]                                   // M-548 w/ MPQ-64SR Radar
];

KPLIB_b_vehAir = [
    ["PRACS_RAH6",200,200,100],                                         // RAH-6S Angry Bird
    ["PRACS_UH1H",225,80,125],                                          // UH-1H
    ["PRACS_UH1H_CAS",225,200,125],                                     // UH-1Y (CAS)
    ["PRACS_AH1S",500,500,200],                                         // AH-1SY Sahrani Cobra (Multi-Role)
    ["PRACS_Sa330_Puma",250,80,150],                                    // SA-330-S Puma
    ["PRACS_Sa330_Puma_SOCAT",250,400,150],                             // SA-330-S Puma (SOCAT)
    ["PRACS_Sa330_Puma_MED",300,0,150],                                 // SA-330-S Puma (Medevac)
    ["PRACS_CH53",300,0,175],                                           // CH-53 Sea Stallion
    ["PRACS_C130",200,0,250],                                           // C-130JS  Hercules
    ["PRACS_P3C",500,200,400],                                          // P-3C Orion
    ["PRACS_Mohawk",1000,1000,400],                                     // OV-1D Mohawk
    ["PRACS_A4M",1500,1000,400],                                        // A-4M-S Skyhawk
    ["PRACS_F16CJ",1250,1500,450],                                      // F-16CJ Wild Weasel
    ["PRACS_F16CJR",1250,1500,450],                                     // F-6CJR Strike Viper
    ["PRACS_F16",1250,1250,450],                                        // F-16SCJ Sahrani Viper
    ["PRACS_MirageIII",1500,1750,450],                                  // Mirage III SCJ
    ["PRACS_MirageV",1600,1800,450],                                    // Mirage V SEF
    ["PRACS_E2C",750,0,500]                                             // E-2C Hawkeye
];

KPLIB_b_vehStatic = [
    ["PRACS_Infantry_m2_static_minitripod",25,40,0],                    // M2 HMG 
    ["PRACS_Infantry_m2_static",25,40,0],                               // M2 HMG (Raised)
    ["PRACS_Infantry_mk19_static",35,60,0],                             // Mk19 AGL
    ["PRACS_Infantry_M220",50,100,0],                                   // M220 TOW-II
    ["PRACS_Infantry_Stinger_Pod",50,100,0],                            // FIM-92J Stinger Pod
    ["PRACS_Infantry_M252",80,150,0],                                   // M252 81mm Mortar
	["PRACS_M101",100,150,0],                                           // M101-A2S
	["PRACS_M102",100,180,0],                                           // M102-A4S
    ["PRACS_M114",150,200,0],                                           // M114-D5S
	["PRACS_M198",150,250,0],                                           // M198A2
	["PRACS_M1",200,250,0],                                             // M1 Long Tom
	["PRACS_M115",200,300,0],                                           // M115
    ["PRACS_MiM23_HAWK",250,500,0],                                      // MiM-23SE HAWK
    ["PRACS_MPQ64_Sentinel",500,0,0]                                      // MiM-23SE HAWK
];

KPLIB_b_objectsDeco = [
    ["PRACS_GP_Medium",0,0,0],
    ["PRACS_GP_Medium_des",0,0,0],
	["PRACS_Temper_tent",0,0,0],
    ["PRACS_Temper_tent_des",0,0,0],
	["PRACS_Temper_tent_2",0,0,0],
    ["PRACS_Temper_tent_2_des",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["PRACS_Sahrani_Flag",0,0,0],
	["PRACS_Sahrani_red_Brigade_Flag",0,0,0],
	["PRACS_sign_flag",0,0,0],
	["PRACS_COM201",0,0,0],
    ["PRACS_MASH",0,0,0],
    ["PRACS_MASH_des",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["PRACS_CamoNet",0,0,0],
    ["PRACS_CamoNet_open",0,0,0],
    ["PRACS_Camonet_1",0,0,0],
	["PRACS_Camonet_2",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
	["PRACS_Fort_Rampart_grass",0,0,0],
	["PRACS_Fort_Rampart",0,0,0],
	["PRACS_artillery_nestt_grass",0,0,0],
	["PRACS_artillery_nest",0,0,0],
	["PRACS_dragonTeeth",0,0,0],
	["PRACS_Large_dragonTeeth",0,0,0],
	["PRACS_Hedgehog",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,100,200,0],
    [KPLIB_b_mobileRespawn,200,0,100],
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,250,0,0],
    [KPLIB_b_airControl,1000,0,0],
    [KPLIB_b_slotHeli,250,0,0],
    [KPLIB_b_slotPlane,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["PRACS_M88",500,250,350],                                          // M88 Hercules
    ["PRACS_M250_Repair",325,0,75],                                     // M250 Repair
    ["PRACS_M250_fuel",125,0,275],                                      // M250 Fuel
    ["PRACS_M250_Ammo",125,200,75],                                     // M250 Ammo
    ["PRACS_m548_ammo",100,200,75],                                     // M548 Ammo
    ["PRACS_m548_fuel",125,0,275],                                      // M548 Fuel
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "PRACS_SNG_D_TL",
    "PRACS_SNG_D_Medic",
    "PRACS_SNG_D_Infantry",
    "PRACS_SNG_D_Infantry",
    "PRACS_SNG_D_Infantry",
    "PRACS_SNG_D_Infantry",
    "PRACS_SNG_D_MG",
    "PRACS_SNG_D_LAT"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "PRACS_Infantry_TL",
    "PRACS_Infantry_Medic",
    "PRACS_Infantry",
    "PRACS_Infantry",
    "PRACS_Infantry_GRE",
    "PRACS_Infantry_MG",
    "PRACS_Infantry_M",
    "PRACS_Infantry_LAT",
    "PRACS_Infantry_RTO",
    "PRACS_Infantry_ENG"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "PRACS_Infantry_TL",
    "PRACS_Infantry",
    "PRACS_Infantry",
    "PRACS_Infantry_LAT",
    "PRACS_Infantry_LAT",
    "PRACS_Infantry_LAT",
    "PRACS_Infantry_Medic"
];

// AA specialists squad.
KPLIB_b_squadAA = [
    "PRACS_Infantry_SL",
    "PRACS_Infantry",
    "PRACS_Infantry",
    "PRACS_Infantry_AA",
    "PRACS_Infantry_AA",
    "PRACS_Infantry_AA",
    "PRACS_Infantry_Medic",
    "PRACS_Infantry_RTO"
];

// Force recon squad.
KPLIB_b_squadRecon = [
    "PRACS_Infantry_Scout",
    "PRACS_Infantry_Scout",
    "PRACS_Infantry_Scout",
	"PRACS_Infantry_Scout",
	"PRACS_Infantry_Scout",
    "PRACS_Infantry_Scout"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "PRACS_Paratrooper_TL",
    "PRACS_Paratrooper_Medic",
    "PRACS_Paratrooper_RTO",
    "PRACS_Paratrooper",
    "PRACS_Paratrooper",
    "PRACS_Paratrooper",
    "PRACS_Paratrooper_MMG",
    "PRACS_Paratrooper_RKT",
    "PRACS_Paratrooper_M"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
    "PRACS_Mk5_SOCR",                                                   // Mk.V Boat
    "PRACS_M60S",                                                       // M60S Pantera
    "PRACS_M1A1_AIM",                                                   // M1A1 Sahrani Lion
    "PRACS_M109A6",                                                     // M109A6-S Paladin
    "PRACS_M270",                                                       // M270 MLRS
    "PRACS_M430",                                                       // M430L SMLRS
    "PRACS_RAH6",                                                       // ARH-6S Angry Bird
    "PRACS_AH1S",                                                       // AH-1SY Sahrani Cobra
    "PRACS_A4M",                                                        // A-4M-S Skyhawk
    "PRACS_F16CJ",                                                      // F-16CJ Wild Weasel 
    "PRACS_F16CJR",                                                     // F-16CJR Strike Viper
    "PRACS_F16",                                                        // F-16SCJ Sahrani Viper
    "PRACS_MirageV",                                                    // Mirage V (SEF)
    "PRACS_Sa330_Puma_SOCAT",                                           // SA-330-S Puma (SOCAT)
    "PRACS_M163_MACHBET",                                               // M163 Machbet
    "PRACS_Pizarro",                                                    // ASCOD Pizarro
    "PRACS_MirageIII",                                                  // Mirage III SCJ
    "FIR_F15E",                                                         // F-15E Strike Eagle
    "PRACS_M1",                                                         // M1 Long Tom
    "PRACS_M115"                                                        // M115
];
