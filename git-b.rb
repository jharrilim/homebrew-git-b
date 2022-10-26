
VERSION = '1.2.0'
X86_64_SHA = '17d98829b4818f7920a47c6468b8a05546f8f7dc15fe62d1b5110061cee2a7a0'
AARCH64_SHA = '7e0b7f146e93bfc7c8a5201f89eecd30e7e8f1652ab1dc45a9d195a60a34a56c'


class GitB < Formula
  desc "Git B"
  homepage "https://github.com/jharrilim/git-b"
  version VERSION

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jharrilim/git-b/releases/download/#{VERSION}/git-b-v#{VERSION}-x86_64-apple-darwin.tar.gz"
      sha256 X86_64_SHA
    else
      url "https://github.com/jharrilim/git-b/releases/download/#{VERSION}/git-b-v#{VERSION}-aarch64-apple-darwin.tar.gz"
      sha256 AARCH64_SHA
    end
  end

  def install
    bin.install "git-b"
  end

  test do
    system bin / "git-b", "--version"
  end
end
