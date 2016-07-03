require "formula"

class Sfntly < Formula
  homepage "https://github.com/googlei18n/sfntly"
  url "https://github.com/googlei18n/sfntly"
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
