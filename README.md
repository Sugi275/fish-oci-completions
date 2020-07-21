# fish-oci-completions
oci-cli completions for fish shell. (Oracle Cloud Infrastructure CLI)

# Install

```
mkdir -p ~/.config/fish/completions
cd ~/.config/fish
git clone https://github.com/Sugi275/fish-oci-completions.git
ln -s ../fish-oci-completions/oci.fish completions/
```

# Update to fish-oci-completions

oci サブコマンドが最新か確認
確認対象 : oci_template.fish の一番上の箇所


fish completions の最新版を生成
```
./generate_completions.sh
```

既存の設定を置き換え

```
cp -p oci.fish ~/.config/fish/fish-oci-completions/oci.fish
```
