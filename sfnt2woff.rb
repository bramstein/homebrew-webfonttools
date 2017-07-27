class Sfnt2woff < Formula
  desc "Convert existing TrueType/OpenType fonts to WOFF format"
  homepage "https://github.com/bramstein/sfnt2woff"
  url "https://github.com/bramstein/sfnt2woff/archive/master.tar.gz"
  version "2009-10-04"
  sha256 "0a7b77c79c2c0065e822a973b05c800aa2d07adf2fa320a7fcb237652d3bca63"

  def install
    system "make"
    bin.install "sfnt2woff"
    bin.install "woff2sfnt"
  end
end
