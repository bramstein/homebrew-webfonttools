require "formula"

class Sfntly < Formula
  homepage "https://code.google.com/p/sfntly/"
  url "http://sfntly.googlecode.com/svn/trunk/java/", :using => :svn, :revision => 239
  version '239'

  depends_on :ant => :build

  def install
    system "ant"
    libexec.install "dist/lib/sfntly.jar"
    libexec.install "dist/tools/sfnttool/sfnttool.jar"
    libexec.install "dist/tools/fontinfo/fontinfo.jar"
    bin.write_jar_script libexec/"sfnttool.jar", "sfnttool"
    bin.write_jar_script libexec/"fontinfo.jar", "fontinfo"
  end
end
