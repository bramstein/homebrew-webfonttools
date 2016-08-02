class Sfntly < Formula
  desc "Library for Using, Editing, and Creating SFNT-based Fonts"
  homepage "https://github.com/googlei18n/sfntly"
  url "https://github.com/googlei18n/sfntly.git", :revision => "b18b09b6114b9b7fe6fc2f96d8b15e8a72f66916"
  version "2016-07-27"

  depends_on :ant => :build

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
