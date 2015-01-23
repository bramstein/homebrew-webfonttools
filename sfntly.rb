require "formula"

class Sfntly < Formula
  homepage "https://code.google.com/p/sfntly/"
  url "http://sfntly.googlecode.com/svn/trunk/java/", :using => :svn, :revision => 239
  version '239'

  depends_on :ant => :build

  def install
    system "ant"
    libexec.install "dist/tools/conversion/eot/eotconverter.jar"
    bin.write_jar_script libexec/"eotconverter.jar", "eotconverter"
  end
end
