## Alignment chart data
## Images taken from Sliced show on Twitch + announcements on Twitter
## Airs on Tuesdays on Twitch
## https://www.twitch.tv/nickwan_datasci for Twitch show
## https:://www.twitter.com/nickwan for Twitter
library(ggalignment)
library(magrittr)

## Alignments:
## Julia Silge = lawful good
## Tony = chaotic good
## Pie Chart = neutral evil
## Josh = neutral good
## Josiah = chaotic good
## Jordan = lawful evil
## Scott = true neutral
## Canzhi = chaotic neutral
## Adrian = chaotic neutral
## Kyle = chaotic evil
## mcmullarkey = lawful good
## Landon = chaotic neutral
## Ethan = chaotic good
## Nick = chaotic evil
## Meg = chaotic good
## Catboost = chaotic evil
## 9:59 pm = lawful evil

add_path <- function(filename) {
  return(paste0("projects/d-and-d-alignment/img/", filename))
}

sliced_data <-
  data.frame(img = c("rbomb.png",
                     "julia silge.png",
                     "tony.png",
                     "pie chart.png",
                     "josh.png",
                     "josiah.png",
                     "scott cole.png",
                     "canzhi.png",
                     "adrian.png",
                     "jordan.png",
                     "kyle.png",
                     "mcmullarkey.png",
                     "landon.png",
                     "ethan.png",
                     "statsinthewild.png",
                     "jesse.png",
                     "meg.png",
                     "ethan.png"),
             alignment = c("chaotic evil",
                           "lawful good",
                           "chaotic good",
                           "neutral evil",
                           "neutral good",
                           "chaotic good",
                           "true neutral",
                           "chaotic neutral",
                           "chaotic neutral",
                           "lawful evil",
                           "chaotic evil",
                           "lawful good",
                           "chaotic neutral",
                           "neutral good",
                           "lawful evil",
                           "chaotic good",
                           "chaotic good",
                           "chaotic good"),
             x = c(-0.5, 0.5, -0.5, 0, -0.5, 0.5, 0, 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 0.5, 0.5, 0.5, -0.5, 0),
             y = c(0.5, 0.5, 0.5, 0, 0.5, 0.5, 0, 0.5, -0.5, 0, 0.5, 0.5, -0.5, 0.5, 0, -0.5, -0.5, 0.5)) %>%
  dplyr::mutate(img = add_path(img))

ggalignment(sliced_data)

ethan <- png::readPNG("projects/d-and-d-alignment/img/ethan.png")
drob <- png::readPNG("projects/d-and-d-alignment/img/drob.png")
craig <- png::readPNG("projects/d-and-d-alignment/img/craig.png")
catboost <-  png::readPNG("projects/d-and-d-alignment/img/catboost.png")
nick <- png::readPNG("projects/d-and-d-alignment/img/nick.png")
gold <- png::readPNG("projects/d-and-d-alignment/img/golden_features.png")
time <- png::readPNG("projects/d-and-d-alignment/img/time.png")

# statsinthewild = lawful evil
# jesse = chaotic good
# drob = lawful neutral
# craig = neutral good

p <-
  ggplot2::ggplot() +
  ggplot2::coord_cartesian(xlim = c(-100, 100), ylim = c(-100, 100)) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(r_crash_img), ## chaotic evil
                             xmin = 50,
                             xmax = 80,
                             ymin = -70,
                             ymax = -40) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(kyle),
                             xmin = 80,
                             xmax = 110,
                             ymin = -80,
                             ymax = -50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(catboost),
                             xmin = 70,
                             xmax = 100,
                             ymin = -100,
                             ymax = -70) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(nick),
                             xmin = 40,
                             xmax = 70,
                             ymin = -95,
                             ymax = -65) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(julia), ## lawful good
                             xmin = -100,
                             xmax = -70,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(mike), ## lawful good
                             xmin = -80,
                             xmax = -50,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(drob), ## lawful neutral
                             xmin = -80,
                             xmax = -50,
                             ymin = -15,
                             ymax = 15) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(jordan), ## lawful evil
                             xmin = -100,
                             xmax = -70,
                             ymin = -80,
                             ymax = -50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(statsinthewild),
                             xmin = -80,
                             xmax = -50,
                             ymin = -80,
                             ymax = -50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(time),
                             xmin = -80,
                             xmax = -50,
                             ymin = -105,
                             ymax = -75) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(tony), ## chaotic good
                             xmin = 40,
                             xmax = 70,
                             ymin = 100,
                             ymax = 70) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(josiah),
                             xmin = 60,
                             xmax = 90,
                             ymin = 100,
                             ymax = 70) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(ethan),
                             xmin = 80,
                             xmax = 110,
                             ymin = 100,
                             ymax = 70) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(meg),
                             xmin = 60,
                             xmax = 90,
                             ymin = 80,
                             ymax = 50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(jesse),
                             xmin = 80,
                             xmax = 110,
                             ymin = 80,
                             ymax = 50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(pie), ## neutral evil
                             xmin = -15,
                             xmax = 15,
                             ymin = -80,
                             ymax = -50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(josh), ## neutral good
                             xmin = -25,
                             xmax = 5,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(craig),
                             xmin = -5,
                             xmax = 25,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(scott), ## true neutral
                             xmin = -15,
                             xmax = 15,
                             ymin = -15,
                             ymax = 15) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(canzhi), ## chaotic neutral
                             xmin = 40,
                             xmax = 70,
                             ymin = -5,
                             ymax = 25) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(adrian),
                             xmin = 60,
                             xmax = 90,
                             ymin = -5,
                             ymax = 25)  +
  ggplot2::annotation_custom(grob = grid::rasterGrob(landon),
                             xmin = 80,
                             xmax = 110,
                             ymin = -5,
                             ymax = 25) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(gold),
                             xmin = 75,
                             xmax = 105,
                             ymin = -25,
                             ymax = 5)

p <- ggimage::ggbackground(p, bg_img)
p

ggplot2::ggsave("projects/d-and-d-alignment/sliced-signs.png", p)
