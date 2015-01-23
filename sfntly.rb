require "formula"

class Sfntly < Formula
  homepage "https://code.google.com/p/sfntly/"
  head "http://sfntly.googlecode.com/svn/trunk/java/", :using => :svn

  depends_on :ant => :build

  def install
    system "ant"
  end
end
