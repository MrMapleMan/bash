echo "Reading file $1..."

# Count hyphenated words as one; do not count double-hyphenated words; count end-of-line hyphenated words
x=$(cat $1 | grep -oP "[A-Z0-9a-z']+(?:-[A-Za-z0-9']+)*")
echo $x
echo $x | wc -w

# Do not count words hyphenated at end of line (assuming one word broken in syllables)
x=$(cat $1 | grep -oP "\b[A-Za-z0-9'-]+\b(?!-$)")
echo $x
echo $x | wc -w

# Separate hyphenated words (and double-hyphenated words). Do not count end-of-line hyphenations
x=$(cat $1 | grep -oP "\b[A-Za-z0-9']+\b(?!-$)")
echo $x
echo $x | wc -w
