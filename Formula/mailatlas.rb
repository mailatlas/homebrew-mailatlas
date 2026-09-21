class Mailatlas < Formula
  include Language::Python::Virtualenv

  desc "Email access for AI agents"
  homepage "https://mailatlas.dev"
  url "https://github.com/mailatlas/mailatlas/releases/download/v0.3.0/mailatlas-0.3.0.tar.gz"
  sha256 "5500b0a1a8c84e825eb4bc859429bcdbc671c5216f95b28c44bb000a9c4567e6"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "mailatlas", shell_output("#{bin}/mailatlas --help")
  end
end
