/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
KPLIB_o_officer = "PRACS_SLA_Guards_Infantry_O";                          // Officer
KPLIB_o_squadLeader = "PRACS_SLA_Guards_Infantry_SL";                    // Squad Leader
KPLIB_o_teamLeader = "PRACS_SLA_Guards_Infantry_TL";                     // Team Leader
KPLIB_o_sentry = "PRACS_SLA_Guards_L_Infantry";                           // Rifleman (Lite)
KPLIB_o_rifleman = "PRACS_SLA_Guards_Infantry";                           // Rifleman
KPLIB_o_riflemanLAT = "PRACS_SLA_Guards_Infantry_RKT";                            // Rifleman (LAT)
KPLIB_o_grenadier = "PRACS_SLA_Guards_Infantry_GRE";                      // Grenadier
KPLIB_o_machinegunner = "PRACS_SLA_Guards_Infantry_MG";                   // Autorifleman
KPLIB_o_heavyGunner = "PRACS_SLA_Guards_Infantry_MG";                     // Heavy Gunner
KPLIB_o_marksman = "PRACS_SLA_Guards_Infantry_M";                         // Marksman
KPLIB_o_sharpshooter = "PRACS_SLA_Guards_Infantry_M";                     // Sharpshooter
KPLIB_o_sniper = "PRACS_SLA_Guards_Infantry_M";                           // Sniper
KPLIB_o_atSpecialist = "PRACS_SLA_Guards_Infantry_RPG_AT";                          // AT Specialist
KPLIB_o_aaSpecialist = "PRACS_SLA_Guards_Infantry_AA";                              // AA Specialist
KPLIB_o_medic = "PRACS_SLA_Guards_Infantry_Medic";                        // Combat Life Saver
KPLIB_o_engineer = "PRACS_SLA_Guards_Infantry_ENG";                       // Engineer
KPLIB_o_paratrooper = "PRACS_SLA_Paratrooper";                            // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "PRACS_SLA_UAZ_open_guards";                               // UAZ-3151
KPLIB_o_mrapArmed = "PRACS_SLA_Tigr";                                    // GAZ-233014 Tigr
KPLIB_o_transportHeli = "PRACS_SLA_Mi8amt";                              // Mi-8 AMT Caballo
KPLIB_o_transportTruck = "PRACS_SLA_URAL";                               // Ural-4320 (Covered)
KPLIB_o_transportTruckAmmo = "PRACS_SLA_URAL_Open";                        // Ural-4320 (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "PRACS_SLA_URAL_Fuel";                               // Ural-4320 Fuel
KPLIB_o_ammoTruck = "PRACS_SLA_Ural_Ammo";                               // Ural-4320 Ammo
KPLIB_o_fuelContainer = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
KPLIB_o_ammoContainer = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
KPLIB_o_flag = "PRACS_SLA_Flag";                                          // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "PRACS_SLA_Guards_L_Infantry",                                      // Rifleman (Lite)
    "PRACS_SLA_Guards_L_Infantry",                                      // Rifleman (Lite)
    "PRACS_SLA_Guards_Infantry",                                        // Rifleman
    "PRACS_SLA_Guards_Infantry",                                        // Rifleman
    "PRACS_SLA_Guards_Infantry_RKT",                                    // Rifleman (AT)
    "PRACS_SLA_Guards_Infantry_MG",                                     // Autorifleman
    "PRACS_SLA_Guards_Infantry_M",                                      // Marksman
    "PRACS_SLA_Guards_Infantry_Medic",                                  // Medic
    "PRACS_SLA_Guards_Infantry_ENG"                                     // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "PRACS_SLA_UAZ_DSHKM"                                              // UAZ-3151 (DShKM)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "PRACS_SLA_Tigr",                                                   // GAZ-233014 Tigr
    "PRACS_SLA_Tigr",                                                   // GAZ-233014 Tigr
	"PRACS_SLA_BRDM",                                                   // BRDM-S
	"PRACS_SLA_BRDM_ATGM",                                              // BRDM-S ATGM
    "PRACS_SLA_BTR60",                                                  // BTR-60PB-R
    "PRACS_SLA_BTR60",                                                  // BTR-60PB-R
	"PRACS_SLA_BTR80A",                                                 // BTR-80A SRG
    "PRACS_SLA_Type63",                                                 // Type 63 APC
	"PRACS_SLA_BMD2",                                                   // BMD-2S Rana SRG
	"PRACS_SLA_BMD2",                                                   // BMD-2S Rana SRG
    "PRACS_SLA_BMP1",                                                   // BMP-1-S Caja IFV
	"PRACS_SLA_BMP2",                                                   // BMP-2-S Caja II IFV
	"PRACS_SLA_ZSU23",                                                  // ZSU-23-4V1 Shilka
	"PRACS_SLA_2S6M_Tunguska",                                          // 2S6M Tunguska
	"PRACS_SLA_MTLB_ZU23",                                              // 2S6M Tunguska
	"PRACS_SLA_SA13",                                                   // SA-13 Gopher
	"PRACS_SLA_SA9",                                                    // SA-9 Gopher
	"PRACS_SLA_SA17",                                                   // SA-17 Grizzly
    "PRACS_SLA_T72B",                                                   // T-72B-1 Trueno
    "PRACS_SLA_T72B",                                                   // T-72B-1 Trueno
    "PRACS_SLA_T72BV",                                                  // T-72BA-1E Trueno
    "PRACS_SLA_T80U"                                                    // T-80U-ES Tifon
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "PRACS_SLA_UAZ_DSHKM",                                              // UAZ-3151 (DShKM)
    "PRACS_SLA_UAZ_DSHKM",                                              // UAZ-3151 (DShKM)
    "PRACS_SLA_UAZ_SPG9",                                               // UAZ-3151 (SPG-9)
    "PRACS_SLA_UAZ_AGS",                                                // UAZ-3151 (AGS-30)
	"PRACS_SLA_Tigr",                                                   // GAZ-233014 Tigr
	"PRACS_SLA_BTR60",                                                  // BTR-60PB-R
	"PRACS_SLA_BTR40_AAM",                                              // BTR-40 Igla
    "PRACS_SLA_BRDM"                                                    // BRDM-2S
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "PRACS_SLA_Tigr",                                                   // GAZ-233014 Tigr
    "PRACS_SLA_Tigr",                                                   // GAZ-233014 Tigr
    "PRACS_SLA_UAZ_SPG9",                                               // UAZ-3151 (SPG-9)
    "O_LSV_02_AT_F",                                                    // Qilin (AT)
    "PRACS_SLA_URAL",                                                   // Ural-4320 Transport
    "PRACS_SLA_URAL",                                                   // Ural-4320 Transport
	"PRACS_SLA_MTLB",                                                   // MTLB
	"PRACS_SLA_MTLB",                                                   // MTLB
	"PRACS_SLA_BMD2",                                                   // BMD-2S Rana SRG
	"PRACS_SLA_BMD2",                                                   // BMD-2S Rana SRG
    "PRACS_SLA_BTR60",                                                  // BTR-60PB-R
    "PRACS_SLA_BTR60",                                                  // BTR-60PB-R
	"PRACS_SLA_BTR80A",                                                 // BTR-80A SRG
    "PRACS_SLA_2S6M_Tunguska",                                          // 2S6M Tunguska
    "PRACS_SLA_2S6M_Tunguska",                                          // 2S6M Tunguska
	"PRACS_SLA_BMP1",                                                   // BMP-1-S Caja IFV
	"PRACS_SLA_BMP2",                                                   // BMP-2-S Caja II IFV
    "PRACS_SLA_T72B",                                                   // T-72B-1 Trueno
    "PRACS_SLA_T72B",                                                   // T-72B-1 Trueno
    "PRACS_SLA_T72BV",                                                  // T-72BA-1E Trueno
    "PRACS_SLA_T80U",                                                   // T-80U-ES Tifon
    "PRACS_SLA_Mi17Sh_UPK",                                             // Mi-17Sh UPK Caballo
    "PRACS_SLA_Mi24D",                                                  // Mi-24D Hind-DS
    "PRACS_SLA_Mi8amt",                                                 // Mi-8 AMT Caballo
	"PRACS_SLA_Mi8amt"                                                  // Mi-8 AMT Caballo
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "PRACS_SLA_UAZ_DSHKM",                                              // UAZ-3151 (DShKM)
    "PRACS_SLA_UAZ_DSHKM",                                              // UAZ-3151 (DShKM)
    "PRACS_SLA_URAL",                                                   // Ural-4320 Transport
    "PRACS_SLA_URAL",                                                   // Ural-4320 Transport
    "PRACS_SLA_BTR60",                                                  // BTR-60PB-R
    "PRACS_SLA_Type63",                                                 // Type 63 APC
    "PRACS_SLA_ZSU23",                                                  // ZSU-23-4V1 Shilka
    "PRACS_SLA_Mi8amt",                                                 // Mi-8 AMT Caballo
	"PRACS_SLA_Mi8amt"                                                  // Mi-8 AMT Caballo
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
KPLIB_o_troopTransports = [
    "PRACS_SLA_URAL",                                                   // Ural-4320 Transport
    "PRACS_SLA_Mi8amt",                                                 // Mi-8 AMT Caballo
    "PRACS_SLA_BTR60",                                                  // BTR-60PB-R
    "PRACS_SLA_MTLB",                                                   // MTLB
    "PRACS_SLA_Type63",                                                 // Type 63 APC
	"PRACS_SLA_BTR80A",                                                 // BTR-80A SRG
	"PRACS_SLA_BMD2"                                                    // BMD-2S Rana SRG
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "PRACS_SLA_Mi24D",                                                  // Mi-24D Hind-DS
    "PRACS_SLA_Mi17Sh_UPK"                                              // Mi-17Sh UPK Caballo
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "PRACS_SLA_MiG21",                                                  // MiG-21 MF-SM Fishbed
	"PRACS_SLA_MiG23",                                                  // MiG-23MF-K Flogger-B
	"PRACS_SLA_MiG27",                                                  // MiG-27M Flogger-J
	"PRACS_SLA_SU22",                                                   // Su-22MK Fitter-K
    "PRACS_SLA_Su25"                                                    // Su-25KS Frogfoot
];

KPLIB_o_turrets_SAM = [
    ["PRACS_SLA_SA8"], 
    ["PRACS_SLA_SA17"], 
    ["PRACS_SLA_SA6", "PRACS_SLA_1S91"],
    ["PRACS_SLA_Sa2", "PRACS_SLA_Sa2", "PRACS_SLA_Sa2", "PRACS_SLA_Sa2", "PRACS_SLA_Sa2", "PRACS_SLA_Sa2", "PRACS_P37_Radar"]
];