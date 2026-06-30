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

## Public Pages

- Source homepage: https://github.com/zhoushoujianwork/jlcfa-aluminum-modeling-skill
- ClawHub homepage: https://clawhub.ai/zhoushoujianwork/skills/jlcfa-aluminum-modeling
- SkillHub.cn homepage: https://skillhub.cn/skills/jlcfa-aluminum-modeling
- SkillHub.cn publish guide: https://skillhub.cn/tutorials#publish-via-cli
- SkillHub.cn API host: https://api.skillhub.cn

## Install From ClawHub

This skill is published on ClawHub as `jlcfa-aluminum-modeling`.

Homepage: https://clawhub.ai/zhoushoujianwork/skills/jlcfa-aluminum-modeling

For Codex:

```bash
npx clawhub@latest install @zhoushoujianwork/jlcfa-aluminum-modeling \
  --workdir "$HOME/.codex" \
  --dir skills
```

For OpenCode:

```bash
npx clawhub@latest install @zhoushoujianwork/jlcfa-aluminum-modeling \
  --workdir "$HOME/.config/opencode" \
  --dir skills
```

## Install From SkillHub.cn

This skill is prepared for the public SkillHub.cn registry. Install the official CLI, then install the skill after it is published and approved:

Homepage after approval: https://skillhub.cn/skills/jlcfa-aluminum-modeling

```bash
curl -fsSL https://skillhub.cn/install/install.sh | bash -s -- --cli-only
skillhub install jlcfa-aluminum-modeling
```

Maintainers can publish through the SkillHub.cn CLI flow:

```bash
export SKILLHUB_KEY="skh_your_api_key"
skillhub login --key "$SKILLHUB_KEY" --host https://api.skillhub.cn
skillhub auth whoami

publish_dir="$(./scripts/build-skillhub-cn-package.sh)"
skillhub publish "$publish_dir" \
  --host https://api.skillhub.cn \
  --changelog "Initial public SkillHub.cn release"
```

## Install From GitHub

Clone the repository, then copy the skill folder into your Codex skills directory:

Homepage: https://github.com/zhoushoujianwork/jlcfa-aluminum-modeling-skill

```bash
git clone https://github.com/zhoushoujianwork/jlcfa-aluminum-modeling-skill.git
cd jlcfa-aluminum-modeling-skill
mkdir -p ~/.codex/skills
cp -R jlcfa-aluminum-modeling ~/.codex/skills/
```

Then start a new Codex thread so the skill metadata is reloaded.

For a direct OpenCode-style local install from this repository without ClawHub:

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
