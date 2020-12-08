class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.3.3.tar.gz"
  sha256 "7c01136f7c81adfd79b6a6c0377b44af7d352fb914000bf54d5a60213c84d49a"
  head "https://github.com/greymatter-io/gmenv.git"

  bottle :unneeded

  uses_from_macos "tar"

  def install
    prefix.install ["bin", "libexec", "lib"]
  end

  def post_install
    versions_path = "#{HOMEBREW_PREFIX}/etc/#{name}/versions"
    versions_local = "#{prefix}/versions"

    mkdir_p versions_path

    ln_s versions_path, versions_local
  end

  test do
    system bin/"gmenv", "--version"
  end
end
