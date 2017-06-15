#!/usr/bin/env bash
name=${1:-modern}
echo "generating ${name} themed resumes"
hackmyresume BUILD resume.json TO ./out/resume_${name}.all -t ${name}