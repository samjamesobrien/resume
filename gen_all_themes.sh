#!/usr/bin/env bash
bash generate.sh modern
bash generate.sh positive
bash generate.sh compact
#bash generate.sh minimalist
#bash generate.sh hello-world
cp out/resume_positive.md ./README.md
rm out/resume_positive.*
