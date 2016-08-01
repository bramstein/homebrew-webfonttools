require "formula"

class Fonttools < Formula
  homepage "https://github.com/behdad/fonttools"
  url "https://github.com/behdad/fonttools/archive/3.0.tar.gz"
  sha256 "bab4046b1777f4b4a7002c8ebe44a977610d1473a9f6fec23dc7d1b891dcec20"
  head "https://github.com/behdad/fonttools.git"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages/FontTools"

    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end
