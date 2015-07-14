require "formula"

class Woff2 < Formula
  homepage "https://github.com/google/woff2"
  url "https://github.com/google/woff2.git", :revision => "3fdb28894a18f1176334595fc486d86cbe6ad68b", :using => :git

  def install
    system "make"
    bin.install "woff2_compress"
    bin.install "woff2_decompress"
  end
end
