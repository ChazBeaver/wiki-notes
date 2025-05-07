# 🚀 Steps to Create SSH Key and Add it to GitHub

### 1. Open Terminal

### 2. Generate SSH Key
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
- When it asks **"Enter a file to save the key"**, you can just press `Enter` to accept the default (`~/.ssh/id_ed25519`).
- Enter a **passphrase** if you want (optional but recommended).

---

### 3. Start the SSH Agent
```bash
eval "$(ssh-agent -s)"
```

---

### 4. Add Your SSH Private Key to the Agent
```bash
ssh-add ~/.ssh/id_ed25519
```

---

### 5. Copy Your Public Key
```bash
cat ~/.ssh/id_ed25519.pub
```
- Copy the entire output (starts with `ssh-ed25519`).

OR quicker:
```bash
pbcopy < ~/.ssh/id_ed25519.pub
```
*(macOS — this will copy it directly into your clipboard)*  
*(on Linux, you might use `xclip` instead: `xclip -sel clip < ~/.ssh/id_ed25519.pub`)*

---

### 6. Add SSH Key to GitHub
- Go to [GitHub → Settings → SSH and GPG keys](https://github.com/settings/keys)
- Click **"New SSH Key"**
  - **Title**: Name it something like "My New Laptop"
  - **Key**: Paste the key you copied
- Save it

---

### 7. Test SSH Connection
```bash
ssh -T git@github.com
```
- If it says something like:
  > "Hi your-username! You've successfully authenticated..."
  
  you're good ✅

---

# 📦 Now you can `git clone`, `git push`, `git pull`, etc. over SSH!

Example of cloning over SSH:
```bash
git clone git@github.com:your-username/your-repo.git
```
✅ Extra Debug (if still broken): Try running:

```bash
ssh -vT git@github.com
```
This gives verbose output and tells us exactly what’s wrong.
