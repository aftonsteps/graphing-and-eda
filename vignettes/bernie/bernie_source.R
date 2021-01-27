## Gets Bernie and mittens data

bernie_7_days <-
  gtrendsR::gtrends(keyword = "bernie", time = "now 7-d")
bernie_mittens_7_days <-
  gtrendsR::gtrends(keyword = "bernie mittens", time = "now 7-d")
mittens_7_days <-
  gtrendsR::gtrends(keyword = "mittens", time = "now 7-d")
save(bernie_7_days, bernie_mittens_7_days, mittens_7_days,
     file = "vignettes/bernie/bernie_data.Rdata")
