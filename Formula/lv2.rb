class Lv2 < Formula
  desc "Portable plugin standard for audio systems"
  homepage "http://lv2plug.in"
  url "http://lv2plug.in/spec/lv2-1.14.0.tar.bz2"
  sha256 "b8052683894c04efd748c81b95dd065d274d4e856c8b9e58b7c3da3db4e71d32"
  bottle do
    cellar :any_skip_relocation
    rebuild 1
    sha256 "6e05929ad39ab40031bb8b141eeb9c3ad172cc1f1d0719f79b03c7c339a6d880" => :sierra
    sha256 "8ad6c88d4ea316fc2e1e15504b3cc88e634e072508932e4278da6824471ac539" => :el_capitan
    sha256 "a4a75ab0aca13e96c7fe10568ddd905bd511909e3a1cb84d1f640cce6e90acc6" => :yosemite
    sha256 "ce29adad60e4b904f15e15cfde2cd07f5a2490e7053279a605db0b87a0e7bdd1" => :mavericks
  end

  def install
    system "./waf", "configure", "--prefix=#{prefix}", "--lv2dir=#{lib}/lv2/"
    system "./waf", "build"
    system "./waf", "install"
  end

  test do
  end
end
