class Ots < Formula
  desc "OpenType Sanitiser parses validates & sanitizes OpenType & WOFF2 font files"
  homepage "https://github.com/khaledhosny/ots"
  url "https://github.com/khaledhosny/ots/archive/refs/tags/v8.1.4.tar.gz"
  sha256 "4cdbd7d93fd6b89ad8bf9861d31540ab99a6c79bbde466c21d2f6044d26373ad"

  head "https://github.com/khaledhosny/ots.git"

  depends_on "ninja" => :build
  depends_on "meson" => :build
  depends_on "freetype"   => :optional

  def install
    if build.with? "freetype"
      ENV.prepend_path "PKG_CONFIG_PATH", Formula["freetype"].opt_lib/"pkgconfig"
    end

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
