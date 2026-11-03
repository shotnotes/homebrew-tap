# Shot Notes Homebrew tap

[Homebrew](https://brew.sh) formula and cask for the computer programs of
[Shot Notes](https://www.shotnotes.app), which write the notes you took on your
shots into the metadata of your image files. Both install the version released
at [shotnotes/support](https://github.com/shotnotes/support/releases).

```
brew tap shotnotes/tap
```

## The command-line tool

```
brew install shotnotes
```

Installs `shotnotes` and its Content Credentials helper `shotnotes-c2pa`, and
exiftool, which they use. It works on macOS 14 or later with Apple Silicon, and on Linux
(x86-64 and ARM 64-bit) with glibc 2.39 or newer.

## The desktop app

```
brew install --cask shotnotes-writer
```

Installs Shot Notes Writer into Applications, and exiftool. It works on macOS
12 or later with Apple Silicon.

## Beta

The programs are in beta. Please
[report a problem](https://github.com/shotnotes/support/issues/new?template=bug_report.yml)
if you find one. They are free to use, under the
[terms of use](https://github.com/shotnotes/support/blob/main/TERMS.md).
