for i in {0..78}
do
    INDEX=$(printf %012d $i).csv.gzip
    URL="https://placedata.reddit.com/data/canvas-history/2022_place_canvas_history-"$INDEX
    output="data/chunks/place-data-$i.csv.gzip"
    echo $URL
    echo "> Downloading file $i"
    curl $URL --output $output
    echo "> Finished. Saved in $output"
    echo
done