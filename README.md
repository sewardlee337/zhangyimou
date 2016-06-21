# zhangyimou - Zhang Yimou Color Palettes

## *Under Development*

Ever wondered what your ggplot2 graphs would look like if they were designed by the auteur behind *Hero*, *House of Flying Daggers*, and the [2008 Beijing Olympics Opening Ceremony](https://www.youtube.com/watch?v=ii-n_QSS0og)? This R package allows users to generate graphs with color palettes inspired by iconic scenes in Zhang Yimou's movies. 


![alt text](https://github.com/sewardlee337/zhangyimou/blob/master/flying-daggers.jpg)
> *House of Flying Daggers* (2004)

This project is inspired by the R package [wesanderson](https://cran.r-project.org/web/packages/wesanderson/index.html). Colors generated with the help of [Palette Generator](http://palettegenerator.com/)

## Usage

### Viewing color palettes

The function `display_palette()` displays a specified color palette:

```
### Display the color palette for movie "House of Flying Daggers".

> display_palette("FlyingDaggers")
```
![alt text](https://github.com/sewardlee337/zhangyimou/blob/master/figure/flyingdagger_palette.png)

Each color palette currently contains 6 colors. Color palettes include those for:
* *House of Flying Daggers*
* *Not One Less*
* *Raise the Red Lantern*
* *The Road Home*

### Making your graphs sexy

The function `choose_palette()` returns a string vector containing hexadecimal values for a respective movie's color palette: 

```
##  Return hexadecimal values representing color palette for movie "House of Flying Daggers". 

> choose_palette("FlyingDaggers")

[1] "#C67778" "#3E5866" "#95464D" "#8FA1A8" "#DFDCD7" "#1C1C2F"
```

`choose_palette()` can be incorporated into your code for a graph created using the ggplot2 package:

```
##  Create a scatterplot using the "iris" dataset.
##  Use the color palette for movie "Raise the Red Lantern"

> ggplot(data = iris, aes(Petal.Length, Petal.Width, colour = Species)) + geom_point() + geom_point(size=3) +
    scale_colour_manual(values = choose_palette("RedLantern")) 
```
![alt text](https://github.com/sewardlee337/zhangyimou/blob/master/figure/redlantern_point.png)
