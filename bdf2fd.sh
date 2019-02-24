#!/bin/bash

for bdf_file in "$@"; do
    name=${bdf_file/.bdf/}
    fd_file=$name.fd
    echo "$bdf_file -> $fd_file"

    tmp=$(mktemp "tmp-$name-XXXXXX.fon")
    fontforge -lang=py -c "f=fontforge.open(sys.argv[1]); f.familyname=sys.argv[2]; f.generate(sys.argv[3])" \
              "$bdf_file" "$name" "$tmp"
    dewinfont "$tmp" -o "$fd_file"
    rm "$tmp"
done
