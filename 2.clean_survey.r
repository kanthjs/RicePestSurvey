
survey = survey %>% setNames( c(
  "rec_date",
  "pic",
  "RDstation",
  "sur_date",
  "province",
  "lat",
  "lon",
  "ecosystem",
  "r_stage",
  "variety",
  "rat_dam",
  "stb_dam",
  "rgm_dam",
  "wh_dam",
  "rtg_dam",
  "trp_dam",
  "wmg_dam",
  "lf_dam",
  "pw_dam",
  "rb_dam",
  "bph_ea",
  "wbh_ea",
  "rb_ea",
  "bl_dam",
  "bls_dam",
  "nbp_dam",
  "bs_dam",
  "lb_dam",
  "rs_dam",
  "bk_dam",
  "dp_dam",
  "fs_dam",
  "nb_dam",
  "shr_dam",
  "shb_dam",
  "hb_dam",
  "gs_dam",
  "ys_dam",
  "weed_inf",
  "weed_main",
  "weed_name"
))

###

survey$RDstation <- fct_recode(survey$RDstation, 
           "ptlrrc" = "ศูนย์วิจัยข้าวพัทลุง",
           "crirrc" = "ศูนย์วิจัยข้าวเชียงราย",
           "sknrrc" = "ศูนย์วิจัยข้าวสกลนคร",
           "brrd" = "กองวิจัยและพัฒนาข้าว", 
           "pslrrc" = "ศูนย์วิจัยข้าวพิษณุโลก",
           "cntrrc" = "ศูนย์วิจัยข้าวชัยนาท")


###

## call province latlon and shp
THprovince_latlon <- readRDS("THprovince_latlon.rds")
th_shp <- readRDS("THprovince_shpfile.rds")

provinceE_T <- th_shp %>% select(PROVINCE_E, PROVINCE_T)

t <- survey %>% left_join(provinceE_T, by = c("province" = "PROVINCE_T"))

survey$province




survey$ecosystem

survey$r_stage

survey$variety