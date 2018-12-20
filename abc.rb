class Abc < Formula
  desc "Power of appbase.io via CLI, with nifty imports from your favorite data sources"
  homepage "https://github.com/appbaseio/abc"
  url "https://github.com/appbaseio/abc/releases/download/0.6.7/abc-darwin-0.6.7.zip"
  sha256 "b13ed26b0f0fd457adcd7d58c53a2ee5017ac253e429c078e9c5a6a97ab4406f"

  def install
    bin.install "abc-0.6.7"
    mv "#{bin}/abc-0.6.7", "#{bin}/abc"
  end

  test do
    system "#{bin}/abc", "version"
  end
end