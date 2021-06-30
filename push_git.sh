git add . || echo "$LINENO: failed";
git commit -m "$1" || echo "$LINENO: failed";
git push -f origin master || echo "$LINENO: failed";
