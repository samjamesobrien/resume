#!/usr/bin/env bash
name=${1:-positive}
rm ./out/resume_${name}.*
echo "generating ${name} themed resumes"
hackmyresume BUILD resume.json TO ./out/resume_${name}.html ./out/resume_${name}.md ./out/resume_${name}.doc ./out/resume_${name}.json -t ${name} && \
wkhtmltopdf -s A4 --dpi 240 ./out/resume_${name}.html ./out/resume_${name}.pdf
