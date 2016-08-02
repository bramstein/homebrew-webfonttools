class Ttf2eot < Formula
  desc "Very small utility to convert TTF files to EOT"
  homepage "https://code.google.com/archive/p/ttf2eot/"
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/ttf2eot/ttf2eot-0.0.2-2.tar.gz"
  sha256 "023cf04d7c717657e92afe566518bf2a696ab22a2a8eba764340000bebff8db8"

  def install
    system "make"
    bin.install "ttf2eot"
  end
end
