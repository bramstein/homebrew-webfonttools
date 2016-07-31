require "formula"

class Sfnt2woff < Formula
  homepage "http://people.mozilla.org/~jkew/woff/"
  url "http://people.mozilla.org/~jkew/woff/woff-code-latest.zip"
  sha256 "7713630d2f43320a1d92e2dbb014ca3201caab1dd4c0ab92816016824c680d96"
  version "2014-12-18"

  def install
    system "make"
    bin.install "sfnt2woff"
    bin.install "woff2sfnt"
  end
end
