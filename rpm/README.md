# RPM Repository

## Fedora / RHEL / CentOS

```bash
# Add repository
sudo tee /etc/yum.repos.d/hyperpolymath.repo << 'EOF'
[hyperpolymath]
name=Hyperpolymath Packages
baseurl=https://hyperpolymath.github.io/homebrew-tap/rpm
enabled=1
gpgcheck=0
EOF

# Install packages
sudo dnf install bunsenite czech-file-knife echidnabot
```

## openSUSE

```bash
# Add repository
sudo zypper addrepo https://hyperpolymath.github.io/homebrew-tap/rpm hyperpolymath

# Install packages
sudo zypper install bunsenite czech-file-knife echidnabot
```
