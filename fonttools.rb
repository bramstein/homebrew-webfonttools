require "formula"

class Fonttools < Formula
  homepage "https://github.com/behdad/fonttools"
  url "https://github.com/behdad/fonttools/archive/2.5.tar.gz"
  sha1 "e972ed601602435b080ce79f129b441daefb2f75"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    ENV["PYTHONPATH"] = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    system "python", *Language::Python.setup_install_args(libexec)
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end
