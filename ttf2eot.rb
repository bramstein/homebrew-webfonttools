require "formula"

class Ttf2eot < Formula
  homepage "https://code.google.com/p/ttf2eot/"
  url "http://ttf2eot.googlecode.com/svn/trunk/", :revision => "r33", :using => :svn

  def install
    system "make"
    bin.install "ttf2eot"
  end
end
