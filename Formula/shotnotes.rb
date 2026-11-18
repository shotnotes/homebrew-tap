class Shotnotes < Formula
  desc "Write Shot Notes into the metadata of photographs"
  homepage "https://www.shotnotes.app"
  license :cannot_represent # proprietary: no SPDX identifier fits

  depends_on "exiftool"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/shotnotes/support/releases/download/v0.1.1/shotnotes-0.1.1-macos-arm64.tar.gz"
      sha256 "6e664166b980e64c371a4a19eba879f9575a56999a8a17216ea07d532e370e7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shotnotes/support/releases/download/v0.1.1/shotnotes-0.1.1-linux-x64.tar.gz"
      sha256 "8dd311f003204395a7ee207d4653e1c1e83ca3f00390029d6e4dba8cbd6dd678"
    end
    on_arm do
      url "https://github.com/shotnotes/support/releases/download/v0.1.1/shotnotes-0.1.1-linux-arm64.tar.gz"
      sha256 "05b51d3652abe52dcfd5e120df615ca96fb945e53927a20e12b9a1c1a300278d"
    end
  end

  def install
    # The helper has to stay beside the tool, which looks for it there.
    bin.install "shotnotes", "shotnotes-c2pa"
    # The terms of use, and the notices and licences of the code from others.
    doc.install "TERMS.md", "NOTICES.md", "LICENCES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shotnotes version")
  end
end
