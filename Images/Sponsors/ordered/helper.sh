#!/bin/bash

# Variablendefinition
inputdir="D:/Dokumente/git/GoGreenGuide/Images/Sponsors/ordered/04_Platin"
outputdir="D:/Dokumente/git/GoGreenGuide/Images/Sponsors/ordered/AllLogos"

# Abarbeiten der eingelesenen Bilder mit Hilfe einer For-Schleife
# und dem Programm ImageMagick.
num=1
for pic in "$inputdir"/*.png ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.png"
done

inputdir="D:/Dokumente/git/GoGreenGuide/Images/Sponsors/ordered/03_Gold"

for pic in "$inputdir"/*.png ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.png"
done
for pic in "$inputdir"/*.jpg ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.jpg"
done

inputdir="D:/Dokumente/git/GoGreenGuide/Images/Sponsors/ordered/02_Silver"

for pic in "$inputdir"/*.png ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.png"
done
for pic in "$inputdir"/*.jpg ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.jpg"
done

inputdir="D:/Dokumente/git/GoGreenGuide/Images/Sponsors/ordered/01_Bronze"

for pic in "$inputdir"/*.png ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.png"
done
for pic in "$inputdir"/*.jpg ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.jpg"
done

inputdir="D:/Dokumente/git/GoGreenGuide/Images/Sponsors/ordered"

for pic in "$inputdir"/*.png ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.png"
done
for pic in "$inputdir"/*.jpg ; do 
    picname=$num
    num=$(($num + 1))
    echo "Bearbeite Bild:    $picname"
    cp "$pic" "$outputdir/${picname}.jpg"
done


cd AllLogos

magick mogrify -trim *.png
magick mogrify -trim *.jpg

magick mogrify -resize 256x256 *.png
magick mogrify -resize 256x256 *.jpg

magick mogrify -background white -alpha remove *.png

magick mogrify -gravity center -extent 256x256 *.png
magick mogrify -gravity center -extent 256x256 *.jpg