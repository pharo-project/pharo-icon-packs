# Pharo Icon Pack
A repository to contain the icon pack for the Pharo IDE. 

This is a derivative from INtelliJ Idea11 icon pack, who are distributed under [Apache 2 licence](https://apache.org/licenses/LICENSE-2.0) 

## Different sizes to fit Pharo IDE scales
Simply resizing icons when scaling Pharo leads to blurry results. 
That's why we provide 3 sets containing the full icon pack, but in different sizes for different scaling.
Each set is stored in a folder named png-scale**xx**, where xx refers to the scale in Pharo. 

## Modifying an Icon
If you want to modify an icon you must first edit its ```svg``` file.
SVGs in this repository were created using [Inkscape](https://inkscape.org/).
From the svg, generate one ```png``` per each different folder.
You can do this using the Inkscape. 
Remember to respect the size of the generated icon in the corresponding folder: not all icons in a folder have the same size!


## Re-generating all ```png```s
Check the scripts folder and execute the file EXPORT-TO-PNG.sh. 
Change the scale**XX** to generate PNGs in the different scales.


[comment]: <> (```find . "*.svg" -exec sh -c '/Applications/Inkscape.app/Contents/MacOS/inkscape $1 --export-type="png" -w 16 -h 16 ${1%}.svg' _ {} \;```)
