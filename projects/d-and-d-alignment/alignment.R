## Alignment chart data
## Images taken from Sliced show on Twitch + announcements on Twitter
## Airs on Tuesdays on Twitch
## https://www.twitch.tv/nickwan_datasci for Twitch show
## https:://www.twitter.com/nickwan for Twitter

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
## Ethan = neutral good

## Nick = chaotic evil
## Meg = chaotic good
## Catboost = chaotic evil
## 9:59 pm = lawful evil

bg_img <- "projects/d-and-d-alignment/img/alignment chart.png"
r_crash_img <- png::readPNG("projects/d-and-d-alignment/img/rbomb.png")
julia <- png::readPNG("projects/d-and-d-alignment/img/julia silge.png")
tony <- png::readPNG("projects/d-and-d-alignment/img/tony.png")
pie <- png::readPNG("projects/d-and-d-alignment/img/pie chart.png")
josh <- png::readPNG("projects/d-and-d-alignment/img/josh.png")
josiah <- png::readPNG("projects/d-and-d-alignment/img/josiah.png")
scott <- png::readPNG("projects/d-and-d-alignment/img/scott cole.png")
canzhi <- png::readPNG("projects/d-and-d-alignment/img/canzhi.png")
adrian <- png::readPNG("projects/d-and-d-alignment/img/adrian.png")
jordan <- png::readPNG("projects/d-and-d-alignment/img/jordan.png")
kyle <- png::readPNG("projects/d-and-d-alignment/img/kyle.png")
mike <- png::readPNG("projects/d-and-d-alignment/img/mcmullarkey.png")
landon <- png::readPNG("projects/d-and-d-alignment/img/landon.png")
ethan <- png::readPNG("projects/d-and-d-alignment/img/ethan.png")
statsinthewild <- png::readPNG("projects/d-and-d-alignment/img/statsinthewild.png")
jesse <- png::readPNG("projects/d-and-d-alignment/img/jesse.png")
drob <- png::readPNG("projects/d-and-d-alignment/img/drob.png")
craig <- png::readPNG("projects/d-and-d-alignment/img/craig.png")
catboost <-  png::readPNG("projects/d-and-d-alignment/img/catboost.png")
nick <- png::readPNG("projects/d-and-d-alignment/img/nick.png")
meg <- png::readPNG("projects/d-and-d-alignment/img/meg.png")
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
