class Scotty < Formula
  desc "Codex and Claude sessions in Cloudflare Containers"
  homepage "https://github.com/Yeshwanthyk/scotty"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.1/scotty-darwin-arm64.tar.gz"
      sha256 "42bda8bf0ef27bd6e30a4a460019fd96dea1373e9efd74663aefcd628104bcbc"
    end
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.1/scotty-darwin-x64.tar.gz"
      sha256 "8a08393db98a3358505289ee3ad08b1bd0991d6e0e0a5eff8a7ea913f531a1fb"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.1/scotty-linux-x64.tar.gz"
      sha256 "b65c12284dd6d91d13f88e7299d67e00cdead5f58eaa4cff7a022a4b4ca2fce5"
    end
  end

  depends_on "cloudflared"

  def install
    bin.install "scotty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scotty --version")
  end
end
