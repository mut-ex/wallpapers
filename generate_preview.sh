#!/bin/sh

# NOTE: this script should be run from the wallpapers root directory.

generate_file() {
	echo "# wallpapers"

	for filename in *.jpg; do
		printf "\n## %s\n\n![%s](%s)\n" "$filename" "$filename" "$filename"
	done

	printf "\n## N.B.\nI did not create any of these wallpapers. I did tweak the colors, clean-up noise, and resize most of them. If you are the original creator and would like for me to remove your work, please let me know.\n"
}

rm README.md
generate_file >>README.md

# NOTE: useful for inspecting readme after creation e.g. `./generate_preview.sh vim`
[ -n "$1" ] && $1 README.md

exit 0
