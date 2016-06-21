
#    Create a list containing color names and respective hexadecimal codes

color_palettes <- list(

     # House of Flying Daggers
     FlyingDaggers = FlyingDaggers <- data.frame(
          hexcodes = c("#C67778", "#3E5866", "#95464D", "#8FA1A8", "#DFDCD7", "#1C1C2F"),
          approx.name = c("Contessa", "Fiord", "Copper Rust", "Regent Gray", "Westar", "Mirage"),
          stringsAsFactors = FALSE),

     # The Road Home
     RoadHome = RoadHome <- data.frame(
          hexcodes = c("#EFDAA9", "#D492B1", "#F3F1E8", "#AF3220", "#9C7D78", "#24202F"),
          approx.name = c("Double Colonial White", "Can Can", "Spring Wood", "Roof Terracotta", "Pharlap", "Steel Gray"),
          stringsAsFactors = FALSE)

)

#    Create a data frame matching movie names to abbreviations

name_table <- data.frame(abbr = c("FlyingDaggers", "RoadHome"), fullname = c("House of Flying Daggers", "The Road Home"))


display_palette <- function(name) {

     #    Extract colors and names

     chosen_palette <- color_palettes[[name]]

     hexcodes <- chosen_palette$hexcodes
     names <- chosen_palette$approx.name

     title <- paste("Color Palette:\n", name_table$fullname[which(name_table$abbr == name)])

     #    Generate horizontal stacked bar graph

     ddf <- data.frame(var1 = c("aa", "bb", "cc", "dd", "ee", "ff"), var2 = c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6))

     ddf <- cbind(ddf, names)

     ggplot(ddf, aes(1, var2, fill=names, order = var1)) + geom_bar(stat="identity") + scale_fill_manual(values = hexcodes) +
          coord_flip() +
          theme(axis.title.x = element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank(),
                axis.title.y = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +
          ggtitle(title) + theme(legend.position="none")

     ### Developer Note: Temporarily remove legend until you can figure out why color names are not matching to actual colors

}

