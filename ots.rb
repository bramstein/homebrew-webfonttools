class Ots < Formula
  desc "OpenType Sanitiser parses validates & sanitizes OpenType & WOFF2 font files"
  homepage "https://github.com/khaledhosny/ots"
  url "https://github.com/khaledhosny/ots/releases/download/v5.0.1/ots-5.0.1.tar.gz"
  sha256 "548cdb7a44b4ca67fd0861626a75874a72be893f7a7faee5709d473456b3232c"

  head "https://github.com/khaledhosny/ots.git"

  depends_on "autoconf"   => :build
  depends_on "automake"   => :build
  depends_on "libtool"    => :build
  depends_on "pkg-config" => :build

  def install
    system "./autogen.sh" if build.head?
    system "./configure"
    system "make", "CXXFLAGS=-DOTS_DEBUG"
    bin.install "ots-sanitize"
    bin.install "ots-perf"
    bin.install "ots-side-by-side"
    bin.install "ots-idempotent"
    bin.install "ots-validator-checker"
  end

  test do
    system "ots-sanitize", "--version"
  end
end
