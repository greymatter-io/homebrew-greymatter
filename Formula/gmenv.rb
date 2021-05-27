class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.3.6.tar.gz"
  sha256 "83e4fac0aaf95142c0ed3ef224fcf8c5986c1e2ca9686580855c442b56f69579"
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
