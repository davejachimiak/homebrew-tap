require "formula"
require "language/haskell"

class Waiter < Formula
  include Language::Haskell::Cabal

  homepage "https://github.com/davejachimiak/waiter"
  url "https://github.com/davejachimiak/waiter/archive/0.1.0.1.tar.gz"
  sha256 "2c7ef7686c2c0c51be11035eb3dc06505e7f8cdb51e4d09aa370ac5840b02448"

  depends_on "cabal-install" => :build
  depends_on "ghc"

  def install
    install_cabal_package
  end

  test do
    waiter = bin/"waiter"
    system waiter, "--help"
  end
end
