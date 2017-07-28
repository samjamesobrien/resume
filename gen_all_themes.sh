#!/usr/bin/env bash -x
themes=(\
#flat \
#eloquent
#jsonresume-theme-eloquent \
#jsonresume-theme-material \
#jsonresume-theme-moon \
#jsonresume-theme-caffeine \
#jsonresume-theme-elite \
jsonresume-theme-curzy \
#jsonresume-theme-simplistic \
#jsonresume-theme-stackoverflow \
#jsonresume-theme-stackoverflow2 \
#jsonresume-theme-briefstrap \
#jsonresume-theme-printclassy \
#jsonresume-theme-kendall \
#jsonresume-theme-simple-red \
#jsonresume-theme-elegant \
#jsonresume-theme-dave \
#jsonresume-theme-kate \
#jsonresume-theme-crispy-potato \
jsonresume-theme-concise \
#jsonresume-theme-compact \
#jsonresume-theme-onepage \
#jsonresume-theme-eleganto \
#jsonresume-theme-materialize \
#jsonresume-theme-retro \
#jsonresume-theme-modern \
#jsonresume-theme-modern2 \
#jsonresume-theme-refined \
#jsonresume-theme-flat-optimized \
#jsonresume-theme-short \
#jsonresume-theme-class \
#jsonresume-theme-dark-classy \
#jsonresume-theme-flat-projects \
#jsonresume-theme-modern-with-projects-section \
)
npm install -g ${themes[@]}
resume test
rm ./out/*.pdf ./out/*.html
for theme in "${themes[@]}"
do
    bash generate.sh ${theme}
done
#cp out/resume_positive.md ./README.md
#rm out/resume_positive.*
