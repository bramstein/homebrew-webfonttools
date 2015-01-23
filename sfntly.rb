require "formula"

class Sfntly < Formula
  homepage "https://code.google.com/p/sfntly/"
  url "http://sfntly.googlecode.com/svn/trunk/java/", :revision => "r239", :using => :svn

  depends_on :ant => :build

  def install
    system "ant"
  end
end
