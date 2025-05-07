# 🛠️ devnotes

Welcome to **devnotes** — my personal DevOps knowledge base.

This repository contains curated notes, walkthroughs, cheat sheets, and reusable code snippets I’ve written or collected over time.
The goal is to document workflows, commands, and concepts that I don’t use frequently enough to memorize —
and to make them instantly searchable with tools like [`fzf`](https://github.com/junegunn/fzf) and [`ripgrep`](https://github.com/BurntSushi/ripgrep).

---

## 📁 Project Structure

- `docs/` – All documentation organized by topic
- `examples/` – Standalone scripts, helper files, and reusable snippets
- `scripts/` – Utility scripts for local use (e.g., fuzzy search)

---

## 🔍 Local Search

Quickly search through notes and files using `fzf`:

```bash
bash scripts/fzf-search.sh
```

Or grep through contents with preview:

```bash
rg "<keyword>" docs examples | fzf --preview 'bat --style=numbers --color=always --line-range :100 {1}'
```

---

## 🗂 File Naming Convention

Each Markdown file follows this naming pattern:

```
<topic>-<scope>.md
```

Examples:

- `gitlab-pipeline-snippets.md`
- `kubernetes-network-policy-overview.md`
- `bash-script-templates.md`

This makes each file easy to identify and search using `fzf`, `ls`, or `rg`.

### ✅ Recommended Title Tags

#### 🧠 Conceptual & Descriptive
- `overview`
- `concepts`
- `terminology`
- `comparison`
- `workflow`
- `patterns`
- `gotchas`
- `faq`
- `troubleshooting`

#### ⚙️ Procedural & Practical
- `setup`
- `walkthrough`
- `guide`
- `howto`
- `install`
- `migration`
- `update`
- `integration`

#### 🧪 Code & Command-Oriented
- `snippets`
- `examples`
- `templates`
- `commands`
- `cheatsheet`
- `functions`
- `aliases`

#### 🔗 Reference & Support
- `links`
- `resources`
- `metadata`
- `config`
- `schema`
- `env-vars`

---

## 📚 Topics Covered (growing)

- Git, GitHub, GitLab workflows
- Kubernetes (kubectl, manifests, ArgoCD)
- Bash scripting and shell patterns
- CI/CD and infrastructure tooling
- Tools like `jq`, `yq`, `fzf`, and more

---

## 🚀 Contributions

This project is for personal use, but feel free to fork or adapt it for your own workflows.
