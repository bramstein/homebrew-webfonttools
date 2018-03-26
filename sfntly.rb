class Sfntly < Formula
  desc "Library for Using, Editing, and Creating SFNT-based Fonts"
  homepage "https://github.com/googlei18n/sfntly"
  url "https://github.com/googlei18n/sfntly"
  version '239'

  depends_on "ant"

  def install
    system "ant", "-f", "java/build.xml"
    libexec.install "java/dist/lib/sfntly.jar"
    libexec.install "java/dist/tools/sfnttool/sfnttool.jar"
    libexec.install "java/dist/tools/fontinfo/fontinfo.jar"
    bin.write_jar_script libexec/"sfnttool.jar", "sfnttool"
    bin.write_jar_script libexec/"fontinfo.jar", "fontinfo"
  end

  test do
    system "fontinfo", "-h"
    system "sfnttool", "-help"
  end
end
