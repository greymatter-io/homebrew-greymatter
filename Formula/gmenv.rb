class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.2.2.tar.gz"
  sha256 "51195f8928f74a8810f14a7ac35aea8611009b914ad4ef239ca1bc791d2f4a86"
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
