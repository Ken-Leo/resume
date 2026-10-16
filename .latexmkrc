# Work around the MacTeX 2026 biber launcher bug on this Mac: the universal
# biber binary unpacks its native slice with `lipo -extract_family`, which the
# current macOS /usr/bin/lipo no longer understands, so biber exits before
# parsing the .bcf and no .bbl is ever produced. On this box a pre-thinned
# copy of the same biber 2.21 lives under ~/.local/share (see ~/.local/bin/biber).
# Guarded so other machines keep using the biber from PATH.
if (-x "$ENV{HOME}/.local/share/texlive-biber-thin/biber") {
    $biber = "$ENV{HOME}/.local/share/texlive-biber-thin/biber";
}
