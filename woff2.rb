require "formula"

class Woff2 < Formula
  homepage "https://github.com/google/woff2"
  url "https://github.com/google/woff2/archive/master.tar.gz"
  sha1 "3cc6c68bc9e933ebf768e4e15a12a24eee0ab280"
  version "2014-12-18"

  def install
    system "make"
    bin.install "woff2_compress"
    bin.install "woff2_decompress"
  end
end
