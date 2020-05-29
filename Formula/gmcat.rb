# This file was generated by GoReleaser. DO NOT EDIT.
class Gmcat < Formula
  desc "GmCat is a tool to interact with The GreyMatter Service Mesh's Catalog"
  homepage "https://github.com/greymatter-io/gmcat"
  version "0.0.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/greymatter-io/gmcat/releases/download/v0.0.14/gmcat_0.0.14_darwin_amd64.tar.gz"
    sha256 "64a453c2f2ec7a0bb4b34ab377e66f1dea1e17adf3483307853ee4b902cd62ed"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/greymatter-io/gmcat/releases/download/v0.0.14/gmcat_0.0.14_linux_amd64.tar.gz"
      sha256 "05e16b27950b1d84246325f4f46d8abf3494033039c28fe70fcbfe34c5effdd0"
    end
  end

  def install
    bin.install "gmcat"
  end

  test do
    system "#{bin}/gmcat version"
  end
end
