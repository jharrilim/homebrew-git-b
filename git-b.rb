
VERSION = '1.4.0'
X86_64_SHA = '739e647a2a228cb532158a97827cac43a83613a19b5f58aaa601e2fe6985791b'
AARCH64_SHA = '896b94584fdec95e17e88f6e5c9c488405661d2818059ef4c8a73e60419717a0'


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
