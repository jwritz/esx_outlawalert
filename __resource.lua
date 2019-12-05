resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Outlaw Alert'

version '1.1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'locales/en.lua',
	'locales/es.lua',
	'config.lua',
	'server/main.lua'
}
client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'locales/en.lua',
	'locales/es.lua',
	'config.lua',
	'client/main.lua'
}

ui_page ('client/html/index.html')

files({
	'client/html/index.html',
	'client/html/script.js',
	'client/html/sounds/OUTRO_01.ogg',
	'client/html/sounds/NOISE_LOOP_01.ogg',
	'client/html/sounds/WE_HAVE_A_POSSIBLE_ASSAULT_NEAR.ogg',
	'client/html/sounds/WE_HAVE_A_GRAND_THEFT_AUTO_NEAR.ogg',
	'client/html/sounds/WE_HAVE_SHOTS_FIRED_NEAR.ogg',
	'client/html/sounds/SUSPECT_IS_A_MALE.ogg',
	'client/html/sounds/SUSPECT_IS_A_FEMALE.ogg',
	'client/html/sounds/STREETS/STREET_ABATTOIR_AVE.wav',
	'client/html/sounds/STREETS/STREET_ABE_MILTON_PKWY.wav',
	'client/html/sounds/STREETS/STREET_ACE_JONES_DR.wav',
	'client/html/sounds/STREETS/STREET_ADAM\'S_APPLE_BLVD.wav',
	'client/html/sounds/STREETS/STREET_AGUJA_ST.wav',
	'client/html/sounds/STREETS/STREET_ALGONQUIN_BLVD.wav',
	'client/html/sounds/STREETS/STREET_ALHAMBRA_DR.wav',
	'client/html/sounds/STREETS/STREET_ALTA_PL.wav',
	'client/html/sounds/STREETS/STREET_ALTA_ST.wav',
	'client/html/sounds/STREETS/STREET_AMARILLO_VISTA.wav',
	'client/html/sounds/STREETS/STREET_AMARILLO_WAY.wav',
	'client/html/sounds/STREETS/STREET_AMERICANO_WAY.wav',
	'client/html/sounds/STREETS/STREET_APLIN_WAY.wav',
	'client/html/sounds/STREETS/STREET_ARGYLE_AVE.wav',
	'client/html/sounds/STREETS/STREET_ARMADILLO_AVE.wav',
	'client/html/sounds/STREETS/STREET_ATLEE_ST.wav',
	'client/html/sounds/STREETS/STREET_AUTOPIA_PKWY.wav',
	'client/html/sounds/STREETS/STREET_BACKLOT_BLVD.wav',
	'client/html/sounds/STREETS/STREET_BANHAM_CANYON_DR.wav',
	'client/html/sounds/STREETS/STREET_BARBARENO_RD.wav',
	'client/html/sounds/STREETS/STREET_BARRACUDA_ST.wav',
	'client/html/sounds/STREETS/STREET_BAYTREE_CANYON_RD.wav',
	'client/html/sounds/STREETS/STREET_BAY_CITY_AVE.wav',
	'client/html/sounds/STREETS/STREET_BAY_CITY_INCLINE.wav',
	'client/html/sounds/STREETS/STREET_BOULEVARD_DEL_PERRO.wav',
	'client/html/sounds/STREETS/STREET_BRADDOCK_TUNNEL.wav',
	'client/html/sounds/STREETS/STREET_BRIDGE_ST.wav',
	'client/html/sounds/STREETS/STREET_BROUGE_AVE.wav',
	'client/html/sounds/STREETS/STREET_BUCCANEER_WAY.wav',
	'client/html/sounds/STREETS/STREET_BUEN_VINO_RD.wav',
	'client/html/sounds/STREETS/STREET_CAESAR_PL.wav',
	'client/html/sounds/STREETS/STREET_CALAFIA_RD.wav',
	'client/html/sounds/STREETS/STREET_CAPE_CATFISH.wav',
	'client/html/sounds/STREETS/STREET_CAPITAL_BLVD.wav',
	'client/html/sounds/STREETS/STREET_CARCER_WAY.wav',
	'client/html/sounds/STREETS/STREET_CARSON_AVE.wav',
	'client/html/sounds/STREETS/STREET_CASCABEL_AVE.wav',
	'client/html/sounds/STREETS/STREET_CASSIDY_TRAIL.wav',
	'client/html/sounds/STREETS/STREET_CAT-CLAW_AVE.wav',
	'client/html/sounds/STREETS/STREET_CATFISH_VIEW.wav',
	'client/html/sounds/STREETS/STREET_CENTURY_BLVD.wav',
	'client/html/sounds/STREETS/STREET_CENTURY_FWY.wav',
	'client/html/sounds/STREETS/STREET_CHOLLA_RD.wav',
	'client/html/sounds/STREETS/STREET_CHOLLA_SPRINGS_AVE.wav',
	'client/html/sounds/STREETS/STREET_CHUM_ST.wav',
	'client/html/sounds/STREETS/STREET_CLINTON_AVE.wav',
	'client/html/sounds/STREETS/STREET_COCKINGEND_DR.wav',
	'client/html/sounds/STREETS/STREET_CONQUISTADOR_BLVD.wav',
	'client/html/sounds/STREETS/STREET_CONQUISTADOR_ST.wav',
	'client/html/sounds/STREETS/STREET_CORTES_AVE.wav',
	'client/html/sounds/STREETS/STREET_CORTES_ST.wav',
	'client/html/sounds/STREETS/STREET_COUGAR_AVE.wav',
	'client/html/sounds/STREETS/STREET_COVENANT_AVE.wav',
	'client/html/sounds/STREETS/STREET_COX_WAY.wav',
	'client/html/sounds/STREETS/STREET_CRUSADE_RD.wav',
	'client/html/sounds/STREETS/STREET_DAVIS_AVE.wav',
	'client/html/sounds/STREETS/STREET_DECKER_ST.wav',
	'client/html/sounds/STREETS/STREET_DEL_PERRO_FWY.wav',
	'client/html/sounds/STREETS/STREET_DORSET_DR.wav',
	'client/html/sounds/STREETS/STREET_DORSET_PL.wav',
	'client/html/sounds/STREETS/STREET_DRY_DOCK_ST.wav',
	'client/html/sounds/STREETS/STREET_DULUOZ_AVE.wav',
	'client/html/sounds/STREETS/STREET_DUNSTABLE_DR.wav',
	'client/html/sounds/STREETS/STREET_DUNSTABLE_LN.wav',
	'client/html/sounds/STREETS/STREET_DUTCH_LONDON_ST.wav',
	'client/html/sounds/STREETS/STREET_DUTCH_THOMPSON_ST.wav',
	'client/html/sounds/STREETS/STREET_EASTBOURNE_WAY.wav',
	'client/html/sounds/STREETS/STREET_EAST_GALILEO_AVE.wav',
	'client/html/sounds/STREETS/STREET_EAST_JOSHUA_RD.wav',
	'client/html/sounds/STREETS/STREET_EAST_MIRROR_DR.wav',
	'client/html/sounds/STREETS/STREET_ECLIPSE_BLVD.wav',
	'client/html/sounds/STREETS/STREET_EDWOOD_WAY.wav',
	'client/html/sounds/STREETS/STREET_ELECTRIC_AVE.wav',
	'client/html/sounds/STREETS/STREET_ELGIN_AVE.wav',
	'client/html/sounds/STREETS/STREET_ELYSIAN_FIELDS_FWY.wav',
	'client/html/sounds/STREETS/STREET_EL_BURRO_BLVD.wav',
	'client/html/sounds/STREETS/STREET_EL_RANCHO_BLVD.wav',
	'client/html/sounds/STREETS/STREET_EQUALITY_WAY.wav',
	'client/html/sounds/STREETS/STREET_EXCEPTIONALISTS_WAY.wav',
	'client/html/sounds/STREETS/STREET_FANTASTIC_PL.wav',
	'client/html/sounds/STREETS/STREET_FENWELL_PL.wav',
	'client/html/sounds/STREETS/STREET_FORT_ZANCUDO_APPROACH_RD.wav',
	'client/html/sounds/STREETS/STREET_FORUM_DR.wav',
	'client/html/sounds/STREETS/STREET_FREE_MARKET_ST.wav',
	'client/html/sounds/STREETS/STREET_FRINGE_DR.wav',
	'client/html/sounds/STREETS/STREET_FUDGE_LN.wav',
	'client/html/sounds/STREETS/STREET_GALILEO_RD.wav',
	'client/html/sounds/STREETS/STREET_GINGER_ST.wav',
	'client/html/sounds/STREETS/STREET_GLORY_WAY.wav',
	'client/html/sounds/STREETS/STREET_GOMA_ST.wav',
	'client/html/sounds/STREETS/STREET_GRAPESEED_AVE.wav',
	'client/html/sounds/STREETS/STREET_GRAPESEED_MAIN_ST.wav',
	'client/html/sounds/STREETS/STREET_GREAT_OCEAN_HWY.wav',
	'client/html/sounds/STREETS/STREET_GREENWICH_PKWY.wav',
	'client/html/sounds/STREETS/STREET_GREENWICH_PLACE.wav',
	'client/html/sounds/STREETS/STREET_GREENWICH_WAY.wav',
	'client/html/sounds/STREETS/STREET_GROVE_ST.wav',
	'client/html/sounds/STREETS/STREET_HANGER_WAY.wav',
	'client/html/sounds/STREETS/STREET_HANGMAN_AVE.wav',
	'client/html/sounds/STREETS/STREET_HANWELL_AVE.wav',
	'client/html/sounds/STREETS/STREET_HARDY_WAY.wav',
	'client/html/sounds/STREETS/STREET_HAWICK_AVE.wav',
	'client/html/sounds/STREETS/STREET_HERITAGE_WAY.wav',
	'client/html/sounds/STREETS/STREET_HIGH_SPANISH_AVE.wav',
	'client/html/sounds/STREETS/STREET_HILLCREST_AVE.wav',
	'client/html/sounds/STREETS/STREET_HILLCREST_RIDGE_ACCESS_RD.wav',
	'client/html/sounds/STREETS/STREET_IMAGINATION_COURT.wav',
	'client/html/sounds/STREETS/STREET_INESENO_RD.wav',
	'client/html/sounds/STREETS/STREET_INNOCENCE_BLVD.wav',
	'client/html/sounds/STREETS/STREET_INTEGRITY_WAY.wav',
	'client/html/sounds/STREETS/STREET_INVENTION_CT.wav',
	'client/html/sounds/STREETS/STREET_JAMESTOWN_ST.wav',
	'client/html/sounds/STREETS/STREET_JOAD_LN.wav',
	'client/html/sounds/STREETS/STREET_JOSHUA_RD.wav',
	'client/html/sounds/STREETS/STREET_KIMBLE_HILL_DR.wav',
	'client/html/sounds/STREETS/STREET_KORTZ_DR.wav',
	'client/html/sounds/STREETS/STREET_LABOR_PL.wav',
	'client/html/sounds/STREETS/STREET_LAGUNA_PL.wav',
	'client/html/sounds/STREETS/STREET_LAKE_VINEWOOD_DR.wav',
	'client/html/sounds/STREETS/STREET_LAKE_VINEWOOD_EST.wav',
	'client/html/sounds/STREETS/STREET_LAS_LAGUNAS_BLVD.wav',
	'client/html/sounds/STREETS/STREET_LA_PUERTA_FWY.wav',
	'client/html/sounds/STREETS/STREET_LESBOS_LN.wav',
	'client/html/sounds/STREETS/STREET_LIBERTY_ST.wav',
	'client/html/sounds/STREETS/STREET_LINDIN_DR.wav',
	'client/html/sounds/STREETS/STREET_LINDSAY_CIRCUS.wav',
	'client/html/sounds/STREETS/STREET_LITTLE_BIGHORN_AVE.wav',
	'client/html/sounds/STREETS/STREET_LOLITA_AVE.wav',
	'client/html/sounds/STREETS/STREET_LOS_SANTOS_FREEWAY.wav',
	'client/html/sounds/STREETS/STREET_LOW_POWER_ST.wav',
	'client/html/sounds/STREETS/STREET_MACDONALD_ST.wav',
	'client/html/sounds/STREETS/STREET_MAD_WAYNE_THUNDER_DR.wav',
	'client/html/sounds/STREETS/STREET_MAGELLAN_AVE.wav',
	'client/html/sounds/STREETS/STREET_MARATHON_AVE.wav',
	'client/html/sounds/STREETS/STREET_MARINA_DR.wav',
	'client/html/sounds/STREETS/STREET_MARLOWE_DR.wav',
	'client/html/sounds/STREETS/STREET_MELANOMA_ST.wav',
	'client/html/sounds/STREETS/STREET_MELROSE_AVE.wav',
	'client/html/sounds/STREETS/STREET_MERINGUE_LN.wav',
	'client/html/sounds/STREETS/STREET_METEOR_ST.wav',
	'client/html/sounds/STREETS/STREET_MILTON_RD.wav',
	'client/html/sounds/STREETS/STREET_MIRIAM_TURNER_OVERPASS.wav',
	'client/html/sounds/STREETS/STREET_MIRROR_PARK_BLVD.wav',
	'client/html/sounds/STREETS/STREET_MIRROR_PL.wav',
	'client/html/sounds/STREETS/STREET_MORNINGWOOD_BLVD.wav',
	'client/html/sounds/STREETS/STREET_MOUNTAIN_VIEW_DR.wav',
	'client/html/sounds/STREETS/STREET_MOVIE_STAR_WAY.wav',
	'client/html/sounds/STREETS/STREET_MT_HAAN_DR.wav',
	'client/html/sounds/STREETS/STREET_MT_HAAN_RD.wav',
	'client/html/sounds/STREETS/STREET_MT_VINEWOOD_DR.wav',
	'client/html/sounds/STREETS/STREET_MUTINY_RD.wav',
	'client/html/sounds/STREETS/STREET_NEW_EMPIRE_WAY.wav',
	'client/html/sounds/STREETS/STREET_NIKOLA_AVE.wav',
	'client/html/sounds/STREETS/STREET_NIKOLA_PL.wav',
	'client/html/sounds/STREETS/STREET_NILAND_AVE.wav',
	'client/html/sounds/STREETS/STREET_NORMANDY_DR.wav',
	'client/html/sounds/STREETS/STREET_NORTH_ARCHER_AVE.wav',
	'client/html/sounds/STREETS/STREET_NORTH_BOULEVARD_DEL_PERRO.wav',
	'client/html/sounds/STREETS/STREET_NORTH_CALAFIA_WAY.wav',
	'client/html/sounds/STREETS/STREET_NORTH_CONKER_AVE.wav',
	'client/html/sounds/STREETS/STREET_NORTH_EL_RANCHO_BLVD.wav',
	'client/html/sounds/STREETS/STREET_NORTH_HIGHLAND_AVE.wav',
	'client/html/sounds/STREETS/STREET_NORTH_POPULAR_ST.wav',
	'client/html/sounds/STREETS/STREET_NORTH_ROCKFORD_DR.wav',
	'client/html/sounds/STREETS/STREET_NORTH_SHELDON_AVE.wav',
	'client/html/sounds/STREETS/STREET_NORTH_SYCAMORE_AVE.wav',
	'client/html/sounds/STREETS/STREET_NORTH_WESTERN_AVE.wav',
	'client/html/sounds/STREETS/STREET_NOWHERE_RD.wav',
	'client/html/sounds/STREETS/STREET_O\'NEIL_WAY.wav',
	'client/html/sounds/STREETS/STREET_OCCUPATION_AVE.wav',
	'client/html/sounds/STREETS/STREET_OLYMPIC_FWY.wav',
	'client/html/sounds/STREETS/STREET_ORCHARDVILLE_AVE.wav',
	'client/html/sounds/STREETS/STREET_PACKERS_AVE.wav',
	'client/html/sounds/STREETS/STREET_PALETO_BLVD.wav',
	'client/html/sounds/STREETS/STREET_PALMWOOD_DRIVE.wav',
	'client/html/sounds/STREETS/STREET_PALOMINO_AVE.wav',
	'client/html/sounds/STREETS/STREET_PALOMINO_FWY.wav',
	'client/html/sounds/STREETS/STREET_PANORAMA_DR.wav',
	'client/html/sounds/STREETS/STREET_PEACEFUL_ST.wav',
	'client/html/sounds/STREETS/STREET_PERTH_ST.wav',
	'client/html/sounds/STREETS/STREET_PICTURE_PERFECT_DR.wav',
	'client/html/sounds/STREETS/STREET_PICTURE_PERFECT_WAY.wav',
	'client/html/sounds/STREETS/STREET_PLAICE_AVE.wav',
	'client/html/sounds/STREETS/STREET_PLAYA_VISTA.wav',
	'client/html/sounds/STREETS/STREET_POPULAR_ST.wav',
	'client/html/sounds/STREETS/STREET_PORTOLA_DR.wav',
	'client/html/sounds/STREETS/STREET_POWER_ST.wav',
	'client/html/sounds/STREETS/STREET_PROCOPIO_DR.wav',
	'client/html/sounds/STREETS/STREET_PROCOPIO_PROMENADE.wav',
	'client/html/sounds/STREETS/STREET_PROSPERITY_ST.wav',
	'client/html/sounds/STREETS/STREET_PROSPERITY_STREET_PROMENADE.wav',
	'client/html/sounds/STREETS/STREET_PYRITE_AVE.wav',
	'client/html/sounds/STREETS/STREET_RED_DESERT_AVE.wav',
	'client/html/sounds/STREETS/STREET_RICHMAN_ST.wav',
	'client/html/sounds/STREETS/STREET_ROCKFORD_DR.wav',
	'client/html/sounds/STREETS/STREET_ROUTE_68.wav',
	'client/html/sounds/STREETS/STREET_ROUTE_68_APPROACH_RD.wav',
	'client/html/sounds/STREETS/STREET_ROY_LOWENSTEIN_BLVD.wav',
	'client/html/sounds/STREETS/STREET_RUB_ST.wav',
	'client/html/sounds/STREETS/STREET_RUNWAY_1.wav',
	'client/html/sounds/STREETS/STREET_SAM_AUSTIN_DR.wav',
	'client/html/sounds/STREETS/STREET_SANDCASTLE_WAY.wav',
	'client/html/sounds/STREETS/STREET_SAN_ANDREAS_AVE.wav',
	'client/html/sounds/STREETS/STREET_SAN_VITUS_BLVD.wav',
	'client/html/sounds/STREETS/STREET_SARDINE_ST.wav',
	'client/html/sounds/STREETS/STREET_SEAVIEW_RD.wav',
	'client/html/sounds/STREETS/STREET_SENORA_FWY.wav',
	'client/html/sounds/STREETS/STREET_SENORA_RD.wav',
	'client/html/sounds/STREETS/STREET_SENORA_WAY.wav',
	'client/html/sounds/STREETS/STREET_SHANK_ST.wav',
	'client/html/sounds/STREETS/STREET_SIGNAL_PL.wav',
	'client/html/sounds/STREETS/STREET_SIGNAL_ST.wav',
	'client/html/sounds/STREETS/STREET_SINNERS_PASSAGE.wav',
	'client/html/sounds/STREETS/STREET_SINNER_ST.wav',
	'client/html/sounds/STREETS/STREET_SKY_WAY.wav',
	'client/html/sounds/STREETS/STREET_SMOKE_TREE_RD.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_ARSENAL_ST.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_BOULEVARD_DEL_PERRO.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_CHOLLA_SPRINGS_AVE.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_MAD_JOE_THUNDER_DR.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_MO_MILTON_DR.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_PACIFIC_AVE.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_ROCKFORD_DR.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_SEASIDE_AVE.wav',
	'client/html/sounds/STREETS/STREET_SOUTH_SHAMBLES_ST.wav',
	'client/html/sounds/STREETS/STREET_SPANISH_AVE.wav',
	'client/html/sounds/STREETS/STREET_STEELE_WAY.wav',
	'client/html/sounds/STREETS/STREET_STRANGEWAYS_DR.wav',
	'client/html/sounds/STREETS/STREET_STRAWBERRY_AVE.wav',
	'client/html/sounds/STREETS/STREET_SUPPLY_ST.wav',
	'client/html/sounds/STREETS/STREET_SUSTANCIA_RD.wav',
	'client/html/sounds/STREETS/STREET_SWISS_ST.wav',
	'client/html/sounds/STREETS/STREET_TACKLE_ST.wav',
	'client/html/sounds/STREETS/STREET_TANGERINE_ST.wav',
	'client/html/sounds/STREETS/STREET_TONGVA_DR.wav',
	'client/html/sounds/STREETS/STREET_TOWER_WAY.wav',
	'client/html/sounds/STREETS/STREET_TUG_ST.wav',
	'client/html/sounds/STREETS/STREET_UNION_RD.wav',
	'client/html/sounds/STREETS/STREET_UNION_ST.wav',
	'client/html/sounds/STREETS/STREET_UTOPIA_GARDENS.wav',
	'client/html/sounds/STREETS/STREET_VESPUCCI_BLVD.wav',
	'client/html/sounds/STREETS/STREET_VINEWOOD_BLVD.wav',
	'client/html/sounds/STREETS/STREET_VINEWOOD_PARK_DR.wav',
	'client/html/sounds/STREETS/STREET_VINE_DR.wav',
	'client/html/sounds/STREETS/STREET_VINE_ST.wav',
	'client/html/sounds/STREETS/STREET_VITUS_ST.wav',
	'client/html/sounds/STREETS/STREET_WEST_ECLIPSE_BLVD.wav',
	'client/html/sounds/STREETS/STREET_WEST_GALILEO_AVE.wav',
	'client/html/sounds/STREETS/STREET_WEST_MIRROR_DR.wav',
	'client/html/sounds/STREETS/STREET_WEST_SILVERLAKE_DR.wav',
	'client/html/sounds/STREETS/STREET_WHISPYMOUND_DR.wav',
	'client/html/sounds/STREETS/STREET_WILD_OATS_DR.wav',
	'client/html/sounds/STREETS/STREET_YORK_ST.wav',
	'client/html/sounds/STREETS/STREET_ZANCUDO_AVE.wav',
	'client/html/sounds/STREETS/STREET_ZANCUDO_BARRANCA.wav',
	'client/html/sounds/STREETS/STREET_ZANCUDO_GRANDE_VALLEY.wav',
	'client/html/sounds/STREETS/STREET_ZANCUDO_RD.wav'
})