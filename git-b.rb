
VERSION = '1.7.0'
X86_64_SHA = '33b1ec7984eb74ef8c9c8c894974240450762a4aa4267a26e32d4bef6cdf0c6f'
AARCH64_SHA = 'c39f2739171803e633b1c4eb872034d4d834f710ad44b2df8ecc7ec275c48c73'


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
    man1.install "share/man/man1/git-b.1"
  end

  test do
    system bin / "git-b", "--version"
  end
end
