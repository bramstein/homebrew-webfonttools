require "formula"

class Woff2 < Formula
  homepage "https://github.com/google/woff2"
  head "https://github.com/google/woff2.git"

  def install
    system "make"
    bin.install "woff2_compress"
    bin.install "woff2_decompress"
  end
end
