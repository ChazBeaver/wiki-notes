
# GitLab PAT Setup (Scoped to GitLab Only)

This guide ensures that your GitLab Personal Access Token (PAT) is securely stored in macOS Keychain and only ever used by Git for GitLab, not GitHub.

---

## ✅ Step 1: Manually Store PAT for GitLab Only

Store your GitLab PAT using the `credential-osxkeychain` helper:

```bash
printf "protocol=https\nhost=gitlab.com\nusername=your-gitlab-username\npassword=your-pat\n" | git credential-osxkeychain store
```

Replace `your-gitlab-username` and `your-pat` with your actual GitLab username and token.

---

## ⚙️ Step 2: Ensure credential.useHttpPath is Disabled

Git scopes credentials by host. Confirm the `useHttpPath` setting is off (it’s off by default):

```bash
git config --global --unset credential.useHttpPath
```

To verify it is unset:

```bash
git config --global credential.useHttpPath  # should return nothing
```

---

## 🔍 Step 3: Verify That PAT Is Only Used by GitLab

Run this to check if credentials are stored for GitHub (should return nothing):

```bash
git credential-osxkeychain get
```

Then enter when prompted:

```
protocol=https
host=github.com
```

If no password is returned, your GitLab PAT is not being used by GitHub — good!

Now test GitLab:

```bash
git credential-osxkeychain get
```

Then enter:

```
protocol=https
host=gitlab.com
```

This should return your stored GitLab credentials.

---

## ✅ You're Done

You’ve now stored your GitLab PAT securely, scoped it only to GitLab, and verified that GitHub won’t use it.

