class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.3.5.tar.gz"
  sha256 "cc4c5a36be9101adb188e1b94abd32e149c6e60d065cb8afeffa3bd4f96df150"
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
