class Orlojctl < Formula
  desc "CLI for Orloj, the orchestration runtime for multi-agent AI systems"
  homepage "https://github.com/OrlojHQ/orloj"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_darwin_arm64.tar.gz"
      sha256 "8eda100460db4d97a881386056a97fb4ce1c11f0a45b3b3089b394fedd5df7cc"
    end
    on_intel do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_darwin_amd64.tar.gz"
      sha256 "f53e2af89e66e816c092b676f828674946488b17890be1c2b4782d5b13cd7ba4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_linux_arm64.tar.gz"
      sha256 "4f7c3844e6c4593c263e59ad49de35301ae6e04601e6127638ae571093645ec1"
    end
    on_intel do
      url "https://github.com/OrlojHQ/orloj/releases/download/v#{version}/orlojctl_v#{version}_linux_amd64.tar.gz"
      sha256 "4f921ade008aeed08167702a35b08bd24bba512d0b627e70b182b8250d145d7b"
    end
  end

  def install
    bin.install "orlojctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orlojctl version 2>&1")
  end
end
