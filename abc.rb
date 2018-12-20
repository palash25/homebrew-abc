class Abc < Formula
  desc "Power of appbase.io via CLI, with nifty imports from your favorite data sources"
  homepage "https://github.com/appbaseio/abc"
  url "https://github.com/appbaseio/abc/releases/download/0.7.1/abc-darwin-0.7.1.zip"
  sha256 "28bdc5e02e0c147c7098e2e7d2d507e12f71281c761a94b9b5570808dc91671a"

  def install
    bin.install "abc-0.7.1"
    mv "#{bin}/abc-0.7.1", "#{bin}/abc"
  end

  test do
    system "#{bin}/abc", "version"
  end
end