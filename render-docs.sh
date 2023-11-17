DOCUMENT_PREVIEW="document-preview"

rm -rf "$DOCUMENT_PREVIEW"

mkdir "$DOCUMENT_PREVIEW"

cp -r "./img" "./$DOCUMENT_PREVIEW"

pandoc "./readme.md" -o "./$DOCUMENT_PREVIEW/readme.html"