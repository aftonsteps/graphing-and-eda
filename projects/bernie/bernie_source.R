## Gets Bernie and mittens data

## Bernie data most recently
bernie_7_days <-
  gtrendsR::gtrends(keyword = "bernie", time = "now 7-d")
bernie_mittens_7_days <-
  gtrendsR::gtrends(keyword = "bernie mittens", time = "now 7-d")
mittens_7_days <-
  gtrendsR::gtrends(keyword = "mittens", time = "now 7-d")
save(bernie_7_days, bernie_mittens_7_days, mittens_7_days,
     file = "vignettes/bernie/bernie_data.Rdata")


## Bernie data historically
## Retrieved at approx. 2021-01-27 21:55:44 PST
bernie_over_time <-
  gtrendsR::gtrends(keyword = "bernie", time = "all")
bernie_over_time_us <-
  gtrendsR::gtrends(keyword = "bernie", geo = "US", time = "all")
save(bernie_over_time, bernie_over_time_us,
     file = "vignettes/bernie/long_term_bernie_data.Rdata")
