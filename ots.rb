require "formula"

class Ots < Formula
  homepage "https://github.com/khaledhosny/ots"
  url "https://github.com/khaledhosny/ots/releases/download/v5.0.0/ots-5.0.0.tar.gz"
  sha256 "f5ceb4ab999376dbec6d4262947dc38f2c353c392ae7d0f4814276a641952e52"
  version "5.0.0"
  head "https://github.com/khaledhosny/ots.git"

  head do
    depends_on "autoconf"   => :build
    depends_on "automake"   => :build
    depends_on "libtool"    => :build
    depends_on "pkg-config" => :build
  end

  def install
    system "./autogen.sh" if build.head?
    system "./configure"
    system "make CXXFLAGS=-DOTS_DEBUG"
    bin.install "perf"
    bin.install "ot-sanitise"
  end
end
