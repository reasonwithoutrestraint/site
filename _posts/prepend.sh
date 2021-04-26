# All markdown files must be prepended with a date to be detected by jekyll
# replace 'echo' with 'mv' when the logic is correct
# from here https://stackoverflow.com/questions/22740505/recursively-prepend-text-to-file-names
rm -rf dated/
cp -r original/ dated/
find -L . -type f -wholename "./dated/*.md" -exec bash -c 'mv "$0" "${0%/*}/2021-04-23-${0##*/}"' {} \;