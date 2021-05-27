class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.3.5.tar.gz"
  sha256 "df6f7ee990c81259fa0f0779624c679c4eaa05f42ffc93badf4ffa6b0350eebe"
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
