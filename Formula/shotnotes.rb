class Shotnotes < Formula
  desc "Write Shot Notes into the metadata of photographs"
  homepage "https://www.shotnotes.app"
  license :cannot_represent # proprietary: no SPDX identifier fits

  depends_on "exiftool"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/shotnotes/support/releases/download/v0.1.0/shotnotes-0.1.0-macos-arm64.tar.gz"
      sha256 "d1292cea51012049f35a2315bfd0fff3765382d80a9c8bc2ccda6431b407d687"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shotnotes/support/releases/download/v0.1.0/shotnotes-0.1.0-linux-x64.tar.gz"
      sha256 "e68b496f2c2b8c04c9c53c99806f0491a11026aca20a3f437067ef38e06d55b2"
    end
    on_arm do
      url "https://github.com/shotnotes/support/releases/download/v0.1.0/shotnotes-0.1.0-linux-arm64.tar.gz"
      sha256 "65c25f3d3e72f40401d3323901530f422bfa4f517670e64895cc05ccee1a725f"
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
