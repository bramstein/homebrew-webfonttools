class Afdko < Formula
  desc "Adobe Font Development Kit for OpenType"
  homepage "http://www.adobe.com/devnet/opentype/afdko.html"
  url "http://download.macromedia.com/pub/developer/opentype/FDK.2.5.65322/FDK-25-MAC.b65322.zip"
  version "2.5.65322"
  sha256 "1639972e94e44631f14a57760a15422d02d79d5b7c97c1f17eaeb0f5439b0363"

  def install
    # support symlinks
    inreplace "FDK-25-MAC.b65322/Tools/osx/setFDKPaths", '"${cmdDirPath}"', "$(dirname $(readlink -f $0))"

    prefix.install Dir["FDK-25-MAC.b65322/*"]
    bin.install_symlink %w[
      AFDKOPython IS autohint autohintexe charplot checkOutlines checkOutlinesUFO checkoutlinesexe
      compareFamily copyCFFCharstrings detype1 digiplot fontplot fontplot2 fontsetplot hintplot kernCheck
      makeInstances makeInstancesUFO makeotf makeotfexe mergeFonts otc2otf otf2otc rotateFont setFDKPaths
      sfntdiff sfntedit spot stemHist ttx ttxn tx type1 ufonormalizer waterfallplot
    ].map { |s| prefix/"Tools/osx/" + s }
  end

  test do
    system "makeotf", "-h"
  end
end
