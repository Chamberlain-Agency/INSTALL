class Impressive < Formula
  desc "Create and edit native Bricks websites"
  homepage "https://impressive-ai.tech/"
  url "https://github.com/Chamberlain-Agency/install/releases/download/impressive-2.2.3/impressive-2.2.3.zip"
  version "2.2.3"
  sha256 "03d905ebeeac4ddcb624ff336602d70c90850f2f19bdc9d85a5e4ce0cc914a90"
  license :cannot_represent
  disable! date: "2026-11-05", because: "Homebrew installation has not been verified"
  depends_on "node"
  depends_on "python@3.13"

  def install
    libexec.install buildpath.children
    (bin/"impressive").write <<~EOS
      #!/bin/sh
      export PYTHON="#{formula_opt_bin("python@3.13")}/python3.13"
      exec "#{formula_opt_bin("node")}/node" "#{opt_libexec}/helpers/cli.cjs" "$@"
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/impressive --version").strip
  end
end
