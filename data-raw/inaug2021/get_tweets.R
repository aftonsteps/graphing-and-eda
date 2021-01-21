## Get tweets about Jan 19 inauguration

## Data munging functions -----
## Unlist the list cols
unlist_cols <- function(x) {
  for (i in 1:ncol(x)) {
    if ("list" %in% class(x[ , i])) {
      x[ , i] <- unlist(x[ , i])
    }
  }
  return(x)
}

## Remove profanity
unprofanify <- function(x) {
  profanity <-
    unique(c(lexicon::profanity_alvarez,
             lexicon::profanity_arr_bad,
             lexicon::profanity_banned,
             lexicon::profanity_racist,
             lexicon::profanity_zac_anger)) %>%
    gsub(pattern = "\\*", replacement = "\\\\*") %>%
    gsub(pattern = "\\.", replacement = "\\\\.")  %>%
    gsub(pattern = "\\+", replacement = "\\\\+")%>%
    gsub(pattern = "\\)", replacement = "\\\\)") %>%
    gsub(pattern = "\\(", replacement = "\\\\(")

  to_delete <- c()
  detected_yet <- FALSE
  print(nrow(x))
  for (i in 1:nrow(x)) {
    ## Only keep looking if this row is still ok
    if (! detected_yet) {
      for (j in 1:ncol(x)) {
        for (k in 1:length(profanity)) {
          if (grepl(profanity[k], x[i, j])) {
            to_delete <- c(to_delete, i)
            detected_yet <- TRUE
          }
        }
      }
    }
    detected_yet <- FALSE
  }
  x <- x[!to_delete, ]
  return(x)
}

## TODO get, unlist, clean, and save these
biden <- rtweet::search_tweets("biden", n = 18000, include_rts = FALSE)
harris <- rtweet::search_tweets("harris", n = 18000, include_rts = FALSE)
inaug <- rtweet::search_tweets("inauguration", n = 18000, include_rts = FALSE)
pres <- rtweet::search_tweets("president", n = 18000, include_rts = FALSE)

