class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded Claude Code, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "f674ca9b57dd34081fd36abd841cc782f1c130afc2351101b27ccd1a715464e6"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treeline version")
  end
end
