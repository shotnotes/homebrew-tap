cask "shotnotes-writer" do
  version "0.1.0"
  sha256 "0c489d7de3c1ea359dee8f2bb76ff24cd6947055c9ce4c91a91b77262d6c1c19"

  url "https://github.com/shotnotes/support/releases/download/v#{version}/shotnotes-writer-#{version}-macos-arm64.zip"
  name "Shot Notes Writer"
  desc "Write Shot Notes into the metadata of photographs"
  homepage "https://www.shotnotes.app/"

  depends_on arch: :arm64
  depends_on formula: "exiftool"
  depends_on macos: :monterey

  app "Shot Notes Writer.app"
end
