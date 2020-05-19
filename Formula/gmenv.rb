class Gmenv < Formula
  desc "Grey Matter version manager inspired by tfenv"
  homepage "https://github.com/greymatter-io/gmenv"
  url "https://github.com/greymatter-io/gmenv/archive/0.1.0.tar.gz"
  sha256 "4a955f353081e121abd6446bfbb9ea43b2541c672d4965bff96f6545d79f73fa"
  head "https://github.com/greymatter-io/gmenv.git"

  bottle :unneeded

  depends_on "bash" => "5.0.17"

  uses_from_macos "tar"

  conflicts_with "greymatter", :because => "gmenv symlinks greymatter binaries"

  def install
    prefix.install ["bin", "libexec", "share"]
    prefix.install "lib" if build.head?
  end

  test do
    system bin/"gmenv", "--version"
  end
end
