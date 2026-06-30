# JLCFA Aluminum Modeling Skill

Standalone agent skill for designing and reviewing aluminum alloy enclosure modeling attributes against JLCFA/JiaLiChuang FA public process guidance.

This repository is primarily a skill package. A plugin wrapper can include it later, but the portable artifact is the `jlcfa-aluminum-modeling/` skill directory.

The skill helps an agent turn natural-language enclosure requirements into a structured, checkable attribute set covering:

- aluminum shell and cover materials
- face-local coordinate assumptions
- display, speaker, microphone, USB, antenna, and button openings
- threaded and countersunk holes
- sandblast anodizing colors
- laser marking and UV printing
- cover/body machining process choices
- tolerance and manufacturability checks

## Skill Path

The installable skill lives in:

```text
jlcfa-aluminum-modeling/
```

## Install From SkillHub

After the skill is published to SkillHub, install it with:

```bash
skillhub install jlcfa-aluminum-modeling \
  --namespace global \
  --agent codex \
  --registry http://skillhub.patsnap.info \
  --force
```

## Install From GitHub

Clone the repository, then copy the skill folder into your Codex skills directory:

```bash
git clone https://github.com/zhoushoujianwork/jlcfa-aluminum-modeling-skill.git
cd jlcfa-aluminum-modeling-skill
mkdir -p ~/.codex/skills
cp -R jlcfa-aluminum-modeling ~/.codex/skills/
```

Then start a new Codex thread so the skill metadata is reloaded.

## ClawHub / OpenCode Style

If this skill is indexed in ClawHub, install it with the common ClawHub command shape:

```bash
npx clawhub@latest install jlcfa-aluminum-modeling \
  --workdir "$HOME/.config/opencode" \
  --dir skills
```

For a direct OpenCode-style local install from this repository:

```bash
mkdir -p "$HOME/.config/opencode/skills"
cp -R jlcfa-aluminum-modeling "$HOME/.config/opencode/skills/"
```

## Example Prompts

```text
Use $jlcfa-aluminum-modeling to convert this enclosure idea into JLCFA modeling attributes.
```

```text
Use $jlcfa-aluminum-modeling to check whether these aluminum shell openings violate JLCFA constraints.
```

```text
Use $jlcfa-aluminum-modeling to create a manufacturable front-panel feature list for a 1.47 inch display device.
```

## Sources

The process reference is based on public JLCFA pages reviewed on 2026-06-30:

- https://www.jlcfa.com/help/44006
- https://ke.jlcfa.com/housing/11

For production orders, verify current values with JLCFA's live pages or an engineer before committing cost, tooling, or batch production.

## Trademark And Data Notice

JLCFA, JiaLiChuang, and 嘉立创 are trademarks or names of their respective owners. This repository is an independent local skill and is not affiliated with or endorsed by JLCFA.

## License

MIT
