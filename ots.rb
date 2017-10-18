class Ots < Formula
  desc "OpenType Sanitiser parses validates & sanitizes OpenType & WOFF2 font files"
  homepage "https://github.com/khaledhosny/ots"
  url "https://github.com/khaledhosny/ots/releases/download/v6.1.1/ots-6.1.1.tar.gz"
  sha256 "d9ca90b4e0cbf2aa3f7bafbf8a2ca6c8b76c4f1c65da9a3b4e374ee21286cee2"

  head "https://github.com/khaledhosny/ots.git"

  depends_on "autoconf"   => :build
  depends_on "automake"   => :build
  depends_on "libtool"    => :build
  depends_on "pkg-config" => :build
  depends_on "freetype"   => :optional

  def install
    if build.with? "freetype"
      ENV.prepend_path "PKG_CONFIG_PATH", Formula["freetype"].opt_lib/"pkgconfig"
    end

    system "./autogen.sh" if build.head?
    system "./configure"
    system "make", "CXXFLAGS=-DOTS_DEBUG"

    bin.install "ots-sanitize"
    bin.install "ots-perf"
    bin.install "ots-idempotent"
    bin.install "ots-validator-checker"
    bin.install "ots-side-by-side" if build.with? "freetype"
  end

  test do
    system "ots-sanitize", "--version"
  end
end
