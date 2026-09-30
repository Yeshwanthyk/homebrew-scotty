class Scotty < Formula
  desc "Codex and Claude sessions in Cloudflare Containers"
  homepage "https://github.com/Yeshwanthyk/scotty"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.2/scotty-darwin-arm64.tar.gz"
      sha256 "76ac202db39a85630a75a3223a0eb998750b12ad89275a86aeff9d3f323eaf84"
    end
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.2/scotty-darwin-x64.tar.gz"
      sha256 "e4a243f552ac2083df52925123d81d89e8b6adbf178f8d5ccefd240bc6c701f8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.2/scotty-linux-x64.tar.gz"
      sha256 "90b9c56a3d675d441244210389c353f061eeda743a6eb3576825e303cdbe8fd0"
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
