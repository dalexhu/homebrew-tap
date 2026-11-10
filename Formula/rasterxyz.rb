class Rasterxyz < Formula
  desc "Generate Web Mercator XYZ PNG tiles from georeferenced rasters"
  homepage "https://github.com/dalexhu/rasterxyz"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/dalexhu/rasterxyz/releases/download/v0.1.0/rasterxyz-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "16405e43015883ee1d637e7f75a382ea040c8bd2259753d027892c6adf447539"
  end

  on_intel do
    url "https://github.com/dalexhu/rasterxyz/releases/download/v0.1.0/rasterxyz-0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "f935be622699ae61c9d07bd235e486c90143b5737e5b3d9d06ff985fd06d2f55"
  end

  def install
    bin.install "rasterxyz"
    doc.install "README.md", "LICENSE"
  end

  test do
    assert_equal "rasterxyz #{version}", shell_output("#{bin}/rasterxyz --version").strip
  end
end
