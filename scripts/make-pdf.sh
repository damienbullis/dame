#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <pdf_filename> <size_in_MB>"
  exit 1
fi

size_MB=$2
file_name=$1

# Calculate the number of pages needed to achieve the desired size
# 1 page = 1 kilobyte
num_pages=$((size_MB * 1024))

# Generate a blank PostScript file with the required number of pages
ps_file="temp.ps"
for ((i=1; i<=num_pages; i++)); do
    echo "" >> "$ps_file"
done

# Convert the PostScript file to PDF using Ghostscript
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -sOutputFile="$file_name" "$ps_file"

# Remove the temporary PostScript file
rm "$ps_file"

echo "PDF file '$file_name' of size ${size_MB}MB generated."
