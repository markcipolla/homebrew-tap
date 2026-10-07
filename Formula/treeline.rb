class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded Claude Code, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.17.7.tar.gz"
  sha256 "4305ec44059899631ad1f40a773314484e559e3be4a372d6808dea837553d2e4"

  depends_on "go" => :build
  depends_on "markcipolla/tap/balance"

  def install
    system "go", "build", *std_go_args(output: bin/"treeline", ldflags: "-s -w -X main.version=#{version}")
    system "go", "build", *std_go_args(output: bin/"tide", ldflags: "-s -w -X main.version=#{version}"), "./cmd/tide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treeline version")
    assert_match version.to_s, shell_output("#{bin}/tide version")
  end
end
