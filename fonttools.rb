require "formula"

class Fonttools < Formula
  homepage "https://github.com/behdad/fonttools"
  url "https://github.com/behdad/fonttools/archive/3.0.tar.gz"
  sha1 "63715415bcd04f0788a85cb8b9c2169612bd414a"
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
