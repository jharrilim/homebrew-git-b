
VERSION = '1.3.0'
X86_64_SHA = '5f99b286dea5a51cebb487d400e017b0715a695541b9450809d11d8e0179962b'
AARCH64_SHA = 'dcce74c71de817d3606d97577f2bb48a9a1737c90a9556351ac68b29fe893a97'


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
