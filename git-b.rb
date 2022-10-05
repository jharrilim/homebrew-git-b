
VERSION = '1.1.0'
X86_64_SHA = 'c719d40bf0e46e450e2bfc41671f9b0f36c3cdf042ee5ed730fbb8361d62303f'
AARCH64_SHA = '49b82577c3a55a377be85673a275f7651154a0d8fcdf93e10c5d2dbeb6c54ca5'


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
