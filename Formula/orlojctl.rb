class Orlojctl < Formula
  desc "CLI for Orloj, the orchestration runtime for multi-agent AI systems"
  homepage "https://github.com/OrlojHQ/orloj"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_darwin_arm64.tar.gz"
      sha256 "31ccb4b72ec364482a83d0cbbeecbddd1f806f11c0a65a352ec69466dcb4ae52"
    end
    on_intel do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_darwin_amd64.tar.gz"
      sha256 "dff3e4d6a870f3b287e17258b98b80a31ddb73d47a3dac02c8534466b9f7c54a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_linux_arm64.tar.gz"
      sha256 "56c503e82c3025620406798180c642b49bfb767fc43d7167151bc960da751329"
    end
    on_intel do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_linux_amd64.tar.gz"
      sha256 "c8571034c193052077933d0fc34461007f92e01f10c075f769dfa6deb62ed40e"
    end
  end

  def install
    bin.install "orlojctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orlojctl version 2>&1")
  end
end
