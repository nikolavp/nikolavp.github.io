#!/bin/bash
# vim: set sw=4 sts=4 et foldmethod=indent :

set -o nounset
set -o errexit

git push origin real-hugo-content

hugo --theme=lanyon-hugo

cd public

git push origin master

cd ..
