#!/bin/bash
set -e

echo "🔧 [1/2] تسجيل binfmt لدعم ARM32..."
docker run --privileged --rm tonistiigi/binfmt --install arm

echo "🔧 [2/2] اختبار البيئة..."
docker run --rm --platform linux/arm/v7 arm32v7/ubuntu:22.04 uname -m

echo "🎉 بيئة ARM32 جاهزة!"
