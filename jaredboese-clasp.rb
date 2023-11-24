require "language/node"

class GoogleClasp < Formula
  desc "Develop Apps Script Projects locally"
  homepage "https://github.com/google/clasp#readme"
  url "https://registry.npmjs.org/@google/clasp/-/clasp-2.4.2.tgz"
  sha256 "24563e211a078154f9d6d50b43a8cfbd096ec241ae8a02434dfa46ef8a9fda5c"
  license "Apache-2.0"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
