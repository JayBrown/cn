class Cn < Formula
  desc "CLI for CommonNumerics routines (CRC-8/16/32/64, Base16/32/64)"
  homepage "https://github.com/JayBrown/cn"
  url "https://github.com/JayBrown/cn/archive/1.00.tar.gz"
  version "1.0.0"
  sha256 "619e4f6e60c4b0cda9cbfe75b510b6d35fd40050766a6aa49356133ac18f7ed9"

  def install
    system "make prefix=#{prefix}"
    system "make clean"
    system "make cn"
    bin.install "cn"
    man1.install "cn.1"
  end

  test do
    system "#{bin}/cn", "version"
  end
end
