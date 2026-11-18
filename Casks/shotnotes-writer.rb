cask "shotnotes-writer" do
  version "0.1.1"
  sha256 "76a9f25c072b69b433504b7bc43e6a2c8634ff7867421fd5fce4e99fcca1451c"

  url "https://github.com/shotnotes/support/releases/download/v#{version}/shotnotes-writer-#{version}-macos-arm64.zip"
  name "Shot Notes Writer"
  desc "Write Shot Notes into the metadata of photographs"
  homepage "https://www.shotnotes.app/"

  depends_on arch: :arm64
  depends_on formula: "exiftool"
  depends_on macos: :monterey

  app "Shot Notes Writer.app"
end
