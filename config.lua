 return mwse.loadConfig("graphicHerbalism") or {

-- sveng edit begin
    pluralQuantityIdStubList = {
-- note: use only normal nouns that can be made plural by added "s"
--        { "", nil }, -- uncomment this line to disable plural prefixing
        { "fungus", "section" },
        { "mushr", "section" },
	},
    pluralQuantityNameStubList = {
-- note: use only normal nouns that can be made plural by added "s"
        { "jerky$", "sample" }, -- "cut"
        { "meat$", "sample" }, -- "cut"
        { "sausauge", "sample" }, -- "cut"
        { "cane$", "sample" },
        { "lard$", "sample" },
        { "seeds$", "sample" }, -- "handful"
        { "powder$", "sample" },
        { "dust$", "sample" },
        { "oil$", "sample" },
        { "pollen$", "sample" },
        { "nectar$", "sample" },
        { "lichen$", "sample" },
        { "moss$", "sample" },
        { "pulp$", "sample" },
        { "muck$", "sample" },
        { "roobrush$", "sample" },
        { "motherw", "blossom" }, -- "blossom"
        { "nectar sac", "sample" }, 
        { "sap$", "sample" }, -- "dollop"
        { "honey$", "sample" }, -- "dollop"
        { "roses$", "bouquet" }, -- "bouquet"
        { "flowers$", "posy" }, -- "posy"
        { "anther$", "posy" }, -- "posy"
        { "kanet$", "posy" }, -- "posy"
        { "roland's tears$", "posy" }, -- "posy"
	{ "heather$", "nosegay" }, -- "nosegay"
        { "cap$", "section" }, 
        { "caps$", "sample" }, -- "troop"
        { "ginseng$", "sample" }, 
        { "mushroom$", "section" }, -- "troop"
        { "mushrooms$", "sample" }, -- "troop"
        { "fungus$", "section" }, -- "cluster"
        { "polypore", "section" },
        { "foot$", "section" },
        { "fiber$", "section" },
        { "funnel$", "sample" }, -- cluster
        { "leaves$", "sample" },
        { "monkshood$", "sample" },
        { "leaf$", "sampling" },
        { "marshmerrow$", "stalk" },
        { "reeds$", "bundle" },
        { "grass$", "bundle" },
        { "petals$", "sample" }, -- "bloom"
        { "stalks$", "bundle" },
        { "weed$", "sample" },
        { "weeds$", "bundle" },
        { "berry$", "sample" },
        { "berries$", "cluster" },
        { "grape$", "cluster" },
        { "grapes$", "cluster" },
        { "salts$", "measure" },
        { "salt$", "sample" },
        { "pie$", "slice" },
        { "nuts$", "sample" }, -- "handful"
        { "bloat$", "sample" },
        { "yam$", "sample" },
        { "root$", "sample" },
        { "^ore", "sample" }, -- "slug"
        { " ore$", "sample" }, -- "slug"
        { "^raw ", "sample" }, -- "slug"
        { "metal", "sample" }, -- "piece"
        { "scathecraw$", "portion" },
        { "wheat$", "portion" },
        { "grain$", "portion" },
        { "rye$", "portion" },
        { "barley$", "portion" },
        { "corn$", "portion" },
        { "indureta$", "portion" },
        { "rice$", "portion" },
        { "oat$", "portion" },
-- ends in s non-plural exceptions	
        { "coprinus$", nil }, -- violet coprinus
        { "hibiscus$", nil }, -- violet coprinus
-- otherwise ends in s plural default	
        { "s$", "sample" },
	},
    pickVerbNameStubList = {
--        { "", "pick" }, -- uncomment this line to use pick for all
        { "flower", "pick" },
        { "hyacinth$", "pick" },
        { "anther$", "pick" },
        { "nectar sac", "pick" },
        { "kanet$", "pick" },
        { "bell$", "pick" },
        { "berries$", "pick" },
        { "berry$", "pick" },
        { "motherw", "pick" },
        { "petal$", "pick" },
        { "rose$", "pick" },
        { "fruit$", "pick" },
        { "grape$", "pick" },
        { "apple$", "pick" },
        { "plumb$", "pick" },
        { "fig$", "pick" },
        { "blossom$", "pick" },
        { "grain$", "harvest" },
        { "indureta$", "harvest" },
        { "rice$", "harvest" },
        { "wheat$", "harvest" },
        { "rye$", "harvest" },
        { "barley$", "harvest" },
        { "corn$", "harvest" },
        { "oat$", "harvest" },
        { "scathecraw$", "harvest" },
        { "roobrush", "pick" },
        { "pearl", "extract" },
        { "fiber", "harvest" },
        { "tuber", "harvest" },
        { "bloat", "harvest" },
        { "pulp", "extract" },
        { "muck", "extract" },
        { "root", "pick" },
        { "yam", "pick" },
        { "^raw ", "excavat" },
        { " ore$", "excavat" },
	},
    pickVerbIdStubList = {
        { "kollop", "extract" },
        { "rock_", "excavat" },
        { "_ore", "excavat" },
        { "ingmine_", "excavat" },
        { "_mine_", "excavat" },
-- note: last entry below is default if none above match	
        { "", "collect" }, -- "gather"
	},
    pickedVerb = {
        ["pick"] = "pick",
        ["harvest"] = "harrow",
        ["extract"] = "extract",
        ["excavat"] = "deplet",
        ["collect"] = "loot",
	},
    showPicked = true,
    showIngrNameIfNotSameAsCont = true,

-- sveng edit end

    showTooltips = true,
    volume = 100,
    blacklist = {
        -- vanilla content
        ["barrel_01_ahnassi_drink"] = true,
        ["barrel_01_ahnassi_food"] = true,
        ["com_chest_02_mg_supply"] = true,
        ["com_chest_02_fg_supply"] = true,
        -- tamriel rebuilt
        ["t_mwcom_furn_ch2fguild"] = true,
        ["t_mwcom_furn_ch2mguild"] = true,
        ["tr_com_sack_02_i501_mry"] = true,
        ["tr_i3-295-de_p_drinks"] = true,
        ["tr_i3-672_de_rm_deskalc"] = true,
        ["tr_m2_com_sack_i501_bg"] = true,
        ["tr_m2_com_sack_i501_sl"] = true,
        ["tr_m2_com_sack_i501_ww"] = true,
        ["tr_m2_q_27_fgchest"] = true,
        ["tr_m2_q_29_fgchest"] = true,
        ["tr_m3_i395_sack_local1"] = true,
        ["tr_m3_ingchest_i3-390-i"] = true,
        ["tr_m3_oe_anjzhirra_sack"] = true,
        ["tr_m3_soil_i3-390-ind"] = true,
    },
    whitelist = {
        -- expanded sounds
        ["contain_trama_shrub_01"] = true,
        ["contain_trama_shrub_02"] = true,
        ["contain_trama_shrub_03"] = true,
        ["contain_trama_shrub_04"] = true,
        ["contain_trama_shrub_05"] = true,
        ["contain_trama_shrub_06"] = true,
        ["flora_bc_fern_01"] = true,
        ["flora_black_anther_01"] = true,
        ["flora_black_anther_02"] = true,
        ["flora_fire_fern_01"] = true,
        ["flora_fire_fern_02"] = true,
        ["flora_fire_fern_03"] = true,
        ["flora_gold_kanet_01"] = true,
        ["flora_gold_kanet_02"] = true,
        ["flora_heather_01"] = true,
        ["flora_kreshweed_01"] = true,
        ["flora_kreshweed_02"] = true,
        ["flora_muckspunge_01"] = true,
        ["flora_muckspunge_02"] = true,
        ["flora_muckspunge_03"] = true,
        ["flora_muckspunge_04"] = true,
        ["flora_muckspunge_05"] = true,
        ["flora_muckspunge_06"] = true,
        ["flora_rm_scathecraw_01"] = true,
        ["flora_rm_scathecraw_02"] = true,
        ["flora_stoneflower_01"] = true,
        ["flora_stoneflower_02"] = true,
        ["flora_wickwheat_01"] = true,
        ["flora_wickwheat_02"] = true,
        ["flora_wickwheat_03"] = true,
        ["flora_wickwheat_04"] = true,
        ["tramaroot_01"] = true,
        ["tramaroot_02"] = true,
        ["tramaroot_03"] = true,
        ["tramaroot_04"] = true,
        ["tramaroot_05"] = true,
        ["tramaroot_06"] = true,
    }
}
