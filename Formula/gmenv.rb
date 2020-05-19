class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/v0.2.0.tar.gz"
  sha256 "ddfb7b167e88da7bdf05f0f56dfb8a607a6c50e43787b5d42d1ca4373f8e6343"
  head "https://github.com/greymatter-io/gmenv.git"

  bottle :unneeded

  uses_from_macos "tar"

  def install
    prefix.install ["bin", "libexec", "lib"]
#     prefix.install "lib" if build.head?
  end
  
  test do
    system bin/"gmenv", "--version"
  end
end
