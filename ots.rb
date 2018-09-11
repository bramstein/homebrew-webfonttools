class Ots < Formula
  desc "OpenType Sanitiser parses validates & sanitizes OpenType & WOFF2 font files"
  homepage "https://github.com/khaledhosny/ots"
  url "https://github.com/khaledhosny/ots/releases/download/v6.1.1/ots-6.1.1.tar.gz"
  sha256 "d9ca90b4e0cbf2aa3f7bafbf8a2ca6c8b76c4f1c65da9a3b4e374ee21286cee2"

  head "https://github.com/khaledhosny/ots.git"

  depends_on "ninja" => :build
  depends_on "meson" => :build
  depends_on "freetype"   => :optional

  def install
    system "meson build"
    system "ninja -C build"

    bin.install "build/ots-sanitize"
    bin.install "build/ots-perf"
    bin.install "build/ots-idempotent"
    bin.install "build/ots-validator-checker"
    bin.install "build/ots-side-by-side" if build.with? "freetype"
  end

  test do
    system "ots-sanitize", "--version"
  end
end
