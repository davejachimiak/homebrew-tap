require "formula"
require "language/haskell"

class Waiter < Formula
  include Language::Haskell::Cabal

  homepage "https://github.com/davejachimiak/waiter"
  url "https://github.com/davejachimiak/waiter/archive/0.1.0.2.tar.gz"
  sha256 "3fa95c8a8dbfb8a81098aaa82902e1142223265fc31c5a997e36c14d5270c8d6"

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
