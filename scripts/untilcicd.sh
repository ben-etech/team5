#!/bin/bash
codeCoverage=85
until [ "$codeCoverage" -gt 90 ]; do
  echo " Build failure"
done
