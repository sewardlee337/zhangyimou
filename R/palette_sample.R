
#    Create a list containing color names and respective hexadecimal codes

color_palettes <- list(

     # House of Flying Daggers
     FlyingDaggers = c("#C67778", "#3E5866", "#95464D", "#8FA1A8", "#DFDCD7", "#1C1C2F"),

     # The Road Home
     RoadHome = c("#D492B1", "#F3F1E8", "#AF3220", "#9C7D78", "#24202F", "#EFDAA9"),

     # Not One Less
     OneLess = c("#9CA6B7", "#8E644F", "#383214", "#565030", "#C28A79", "#CCC8C9"),

     # Raise the Red Lantern
     RedLantern = c("#C23915", "#D97B3A", "#6E2916", "#884E36", "#1A0905", "#43150A")

)

#    Create a data frame matching movie names to abbreviations

name_table <- data.frame(abbr = c("FlyingDaggers", "RoadHome", "OneLess", "RedLantern"),
                         fullname = c("House of Flying Daggers", "The Road Home", "Not One Less", "Raise the Red Lantern"))


display_palette <- function(name) {

     #    Extract colors and names

     hexcodes <- color_palettes[[name]]

     title <- paste("Color Palette:\n", name_table$fullname[which(name_table$abbr == name)])

     #    Generate horizontal stacked bar graph

     ddf <- data.frame(var1 = c("aa", "bb", "cc", "dd", "ee", "ff"), var2 = c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6))

     ggplot(ddf, aes(1, var2, fill=var1)) + geom_bar(stat="identity") + scale_fill_manual(values = hexcodes) +
          coord_flip() +
          theme(axis.title.x = element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank(),
                axis.title.y = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +
          ggtitle(title) + theme(legend.position="none")

     ### Developer Note: Temporarily remove legend until you can figure out why color names are not matching to actual colors

}


choose_palette <- function(name){

     return(color_palettes[[name]])

}
