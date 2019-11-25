#!/bin/zsh

# NOTE: this script should be run from the wallpapers root directory.

nb_note="""
## N.B.

I did not create any of these wallpapers. I did tweak the colors, clean-up noise,
and resize most of them. If you are the original creator and would like for me
to remove your work, please let me know."""

generate_file() {
    echo "<!-- markdownlint-disable MD026 -->"
    echo "# wallpapers"
    echo "$nb_note"

    for filename (*.jpg(om)); do
        printf "\n## %s\n\n![%s](%s)\n" "$filename" "$filename" "$filename"
    done
}

rm README.md; generate_file >>README.md

# useful for inspecting readme after creation e.g. $ ./generate_preview.sh vim
[ -n "$1" ] && $1 README.md

exit 0
