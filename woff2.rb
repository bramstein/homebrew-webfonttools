class Woff2 < Formula
  desc "Compress fonts with Brotli into WOFF2 format"
  homepage "https://github.com/google/woff2"
  url "https://github.com/google/woff2.git", :revision => "afbecce5ff16faf92ce637eab991810f5b66f803"

  def install
    system "make"
    bin.install "woff2_compress"
    bin.install "woff2_decompress"
  end
end
