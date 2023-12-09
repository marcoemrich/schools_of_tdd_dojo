for file in *.md; do
    filename="${file%.*}"
    # Replace 'your_command' with the command you want to run, using "$filename" as the argument
    pandoc --from=gfm --to=pdf -o $filename.pdf $filename.md
done