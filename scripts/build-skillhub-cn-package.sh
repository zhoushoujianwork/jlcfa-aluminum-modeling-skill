#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
src_dir="${repo_root}/jlcfa-aluminum-modeling"
out_dir="${1:-${repo_root}/.dist/skillhub-cn/jlcfa-aluminum-modeling}"

if [[ ! -f "${src_dir}/SKILL.md" ]]; then
  echo "Missing source skill: ${src_dir}/SKILL.md" >&2
  exit 1
fi

rm -rf "${out_dir}"
mkdir -p "${out_dir}"
cp -R "${src_dir}/." "${out_dir}/"

tmp_file="$(mktemp)"
awk '
  NR == 1 && $0 == "---" {
    print "---"
    print "name: jlcfa-aluminum-modeling"
    print "slug: jlcfa-aluminum-modeling"
    print "displayName: JLCFA Aluminum Modeling"
    print "version: 1.0.0"
    print "summary: Build and review JLCFA aluminum alloy enclosure modeling attributes for manufacturable shell designs."
    print "description: \"Build and review JLCFA/JiaLiChuang FA aluminum alloy enclosure modeling attributes. Use when users mention JiaLiChuang, JLCFA, aluminum enclosure, openings, threaded holes, countersunk holes, anodizing, UV printing, laser marking, cover machining, shell machining, or need AI/CAD attributes for manufacturable aluminum enclosure modeling.\""
    print "license: MIT"
    print "homepage: https://github.com/zhoushoujianwork/jlcfa-aluminum-modeling-skill"
    print "tags: [jlcfa, jialichuang, aluminum-enclosure, cad, manufacturing]"
    in_frontmatter = 1
    next
  }
  in_frontmatter && $0 == "---" {
    print "---"
    in_frontmatter = 0
    next
  }
  !in_frontmatter { print }
' "${src_dir}/SKILL.md" > "${tmp_file}"
mv "${tmp_file}" "${out_dir}/SKILL.md"

echo "${out_dir}"
