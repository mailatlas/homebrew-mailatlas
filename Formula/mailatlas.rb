class Mailatlas < Formula
  include Language::Python::Virtualenv

  desc "Email ingestion for AI agents and data applications"
  homepage "https://mailatlas.dev"
  url "https://github.com/mailatlas/mailatlas/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e32618ba52ab6be5d72e206e4baf2cb798f0183223d8ed4f1165c21d45b27103"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "mailatlas", shell_output("#{bin}/mailatlas --help")
  end
end
