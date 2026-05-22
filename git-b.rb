
VERSION = '1.6.0'
X86_64_SHA = '76772023378bed8863c193498be6f44bd565425db5bbb7dbb7fabd60f2d943b0'
AARCH64_SHA = 'bb31316229b83a79b882be1493d4a946a74e96fd743f51ac533372171da07a31'


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
