echo "Generating lowres pages:"
for f in ../originais/*.jpg
do
    echo "Converting $f ..."
    convert $f -resize 600x $f.lowres.jpg
done

echo "And now generating the PDF..."
convert ../originais/*.lowres.jpg Software_de_um_Minicomputador__Sistema_Basico_de_Controle__BenicioJSouza_1976.pdf
echo "done."

rm ../originais/*.lowres.jpg -f
