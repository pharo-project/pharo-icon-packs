In Pharo execute the following:

```
cmd1 := '/Applications/Inkscape.app/Contents/MacOS/inkscape ../svg/'.
cmd2 := '.svg --export-type="png" -w '.
cmd3 := ' -h '.
scale := 1.5.

"Old Pharo icons"
Smalltalk ui icons allIconNames sorted
 do: [ :iconName |  | icon width height |
     
    icon  := Smalltalk ui iconNamed: iconName.
    width := (icon width * scale) rounded.
    height := (icon height * scale) rounded.
    Transcript crShow:
        cmd1, iconName , cmd2 , width asString , cmd3 , height asString ].

"New icons added in Pharo11"
#( 'box' 'disable' 'downArrow' 'enable' 'upAndDownArrow' 'userFemale' )
    do: [ :iconName |  | icon width height | 
    width := (16 * scale) rounded.
    height := (16 * scale) rounded.
    
    Transcript crShow:
        cmd1, iconName , cmd2 , width asString , cmd3 , height asString ].
```
To load specific PNG icons in Pharo, use the following script:
```
theme := ThemeIcons current.

iconName := #smallDebug.
iconFile := ('/Users/caro/Documents/gitrepos/pharo-icons/png-16x16/', iconName, '.png') asFileReference.

theme icons at: #smallDebug put: (theme readPNGFrom: iconFile).
``
