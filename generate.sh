#!/usr/bin/env bash -x
theme=${1:jsonresume-theme-positive}
name=${theme#"jsonresume-theme-"}
rm ./out/resume_${name}.*
echo "generating ${name} themed resumes"
#hackmyresume BUILD resume.json TO ./out/resume_${name}.html ./out/resume_${name}.md ./out/resume_${name}.doc ./out/resume_${name}.json -t ${name}
resume export out/resume_${name}.pdf --format pdf --theme ${theme}
resume export out/resume_${name}.html --format html --theme ${theme}
