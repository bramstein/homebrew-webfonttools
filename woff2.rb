require "formula"

class Woff2 < Formula
  homepage "https://github.com/google/woff2"
  url "https://github.com/google/woff2.git", :revision => "2b35420fa91d7999423076a516eef9b1572be5af", :using => :git

  def install
    system "make"
    bin.install "woff2_compress"
    bin.install "woff2_decompress"
  end
end
