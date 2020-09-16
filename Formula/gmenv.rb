class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.2.3.tar.gz"
  sha256 "34af4011e1293425cc6c448e41ce515fb3ee7a08f28f29bdd9bf279c56a217bb"
  head "https://github.com/greymatter-io/gmenv.git"

  bottle :unneeded

  uses_from_macos "tar"

  def install
    prefix.install ["bin", "libexec", "lib"]
  end

  def post_install
    versions_path = "#{HOMEBREW_PREFIX}/etc/#{name}/versions"
    versions_local = "#{prefix}/versions"

    mkdir_p versions_path unless versions_path.directory?

    ln_s versions_path, versions_local
  end

  test do
    system bin/"gmenv", "--version"
  end
end
