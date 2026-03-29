class Orlojctl < Formula
  desc "CLI for Orloj, the orchestration runtime for multi-agent AI systems"
  homepage "https://github.com/OrlojHQ/orloj"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_darwin_arm64.tar.gz"
      sha256 "9bcd24fc2a5ddaf4a54431ab09c0628f83711fb7b9f02804422a61b4e2ee5fbb"
    end
    on_intel do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_darwin_amd64.tar.gz"
      sha256 "52e1a71a757325907e08377581cc99dff7983c9d1859a1a49e2acb09d5c3c151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_linux_arm64.tar.gz"
      sha256 "b0c926a6fb8d49217019eae5b5667f1bda1c7b66f6277976912f8896000a1b25"
    end
    on_intel do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_linux_amd64.tar.gz"
      sha256 "881d133863a60c8121c2877a6f75d3ecc2bdaf953eae92d43742d8039549c79a"
    end
  end

  def install
    bin.install "orlojctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orlojctl version 2>&1")
  end
end
