
VERSION = '1.8.0'
X86_64_SHA = 'f35f650807cca16fb9e97ab96a3f1de90d6e5ac294670f2304d78506d519a20e'
AARCH64_SHA = '48bb793b7bdb810f9cde656f0ae22c16eda25fc9996351cc0c80f159f24583e6'


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
