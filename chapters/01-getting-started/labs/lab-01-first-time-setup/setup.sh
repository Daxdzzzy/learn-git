#!/usr/bin/env bash
# Lab 01 — builds a fresh practice repo. Safe to re-run: it only touches /tmp/learn-git/lab-01.
set -euo pipefail

LAB_DIR=/tmp/learn-git/lab-01
rm -rf "$LAB_DIR"
mkdir -p "$LAB_DIR"
cd "$LAB_DIR"

git init -q
git config --local user.email "lab-01@example.com"
echo "hello" > hello.txt

echo "Lab ready at $LAB_DIR"
