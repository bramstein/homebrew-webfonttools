class Vfb2ufo < Formula
  desc "Font converter that transforms FontLab VFB files into UFO (and back again)"
  homepage "http://blog.fontlab.com/font-utility/vfb2ufo/"
  url "http://www.fontlab.us/downloads/installers/vfb2ufoMac.zip"
  version "2015-01-23"
  sha256 "bba50c7ec94c3f8d112be368e2532bd0e4b97047b6059734f5b2e46031b70671"

  def install
    bin.install 'vfb2ufoMac/bin/vfb2ufo'
  end

  test do
    system "vfb2ufo"
  end
end
