require "formula"

class FontTools < Formula
  homepage "https://github.com/behdad/fonttools"
  url "https://github.com/behdad/fonttools/archive/2.5.tar.gz"
  sha1 "8388a2e37ce349dac6555bb824c82723e3b65fbf"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    ENV["PYTHONPATH"] = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    system "python", *Language::Python.setup_install_args(libexec)
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end
