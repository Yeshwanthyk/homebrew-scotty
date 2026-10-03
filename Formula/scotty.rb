class Scotty < Formula
  desc "Codex and Claude sessions in Cloudflare Containers"
  homepage "https://github.com/Yeshwanthyk/scotty"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.6.0/scotty-darwin-arm64.tar.gz"
      sha256 "81900801830ef07dd60f349989361a264727ef37920145ace58276156f0e371d"
    end
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.6.0/scotty-darwin-x64.tar.gz"
      sha256 "abc5fec07ec62bcd4f1507db339583be0936409df544217ec8282271fb46c874"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.6.0/scotty-linux-x64.tar.gz"
      sha256 "7e3ddb40c96723e4466f892161db91285f00d1eb0c49496a415db2e4ef649881"
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
