class Scotty < Formula
  desc "Codex and Claude sessions in Cloudflare Containers"
  homepage "https://github.com/Yeshwanthyk/scotty"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.0/scotty-darwin-arm64.tar.gz"
      sha256 "f8737e2fca3e5abdf9b4ce5c7cee157482122e9b5464e0662f8442a038f409a1"
    end
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.0/scotty-darwin-x64.tar.gz"
      sha256 "dbb4d0b1daa76b80fe8408cf52e0dad1306f766c8d708440a1206c28335f12a9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Yeshwanthyk/scotty/releases/download/v0.5.0/scotty-linux-x64.tar.gz"
      sha256 "ffc4e69b06b2d177b89ed7d9a2435604eac190948eb3cca11dfdc750d23a0e3a"
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
