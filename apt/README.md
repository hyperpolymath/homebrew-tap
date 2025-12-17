# APT Repository

## Add the repository

```bash
# Add GPG key (when available)
curl -fsSL https://hyperpolymath.github.io/homebrew-tap/apt/hyperpolymath.gpg | sudo gpg --dearmor -o /usr/share/keyrings/hyperpolymath.gpg

# Add repository
echo "deb [signed-by=/usr/share/keyrings/hyperpolymath.gpg] https://hyperpolymath.github.io/homebrew-tap/apt stable main" | sudo tee /etc/apt/sources.list.d/hyperpolymath.list

# Update and install
sudo apt update
sudo apt install bunsenite czech-file-knife echidnabot
```

## Without GPG verification (not recommended)

```bash
echo "deb [trusted=yes] https://hyperpolymath.github.io/homebrew-tap/apt stable main" | sudo tee /etc/apt/sources.list.d/hyperpolymath.list
sudo apt update
```
