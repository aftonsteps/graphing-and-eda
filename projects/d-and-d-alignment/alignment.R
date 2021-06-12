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

p <-
  ggplot2::ggplot() +
  ggplot2::coord_cartesian(xlim = c(-100, 100), ylim = c(-100, 100)) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(r_crash_img),
                             xmin = 60,
                             xmax = 90,
                             ymin = -80,
                             ymax = -50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(julia),
                             xmin = -60,
                             xmax = -90,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(jordan),
                             xmin = -60,
                             xmax = -90,
                             ymin = -15,
                             ymax = 15) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(tony),
                             xmin = 45,
                             xmax = 75,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(josiah),
                             xmin = 80,
                             xmax = 110,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(pie),
                             xmin = -15,
                             xmax = 15,
                             ymin = -80,
                             ymax = -50) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(josh),
                             xmin = -15,
                             xmax = 15,
                             ymin = 90,
                             ymax = 60) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(scott),
                             xmin = -15,
                             xmax = 15,
                             ymin = -15,
                             ymax = 15) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(canzhi),
                             xmin = 45,
                             xmax = 75,
                             ymin = -15,
                             ymax = 15) +
  ggplot2::annotation_custom(grob = grid::rasterGrob(adrian),
                             xmin = 80,
                             xmax = 110,
                             ymin = -15,
                             ymax = 15)


p <- ggimage::ggbackground(p, bg_img)

ggplot2::ggsave("projects/d-and-d-alignment/sliced-signs.png", p)
