class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded Claude Code, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.17.5.tar.gz"
  sha256 "0a6feb0bfbc574a2b861ec7509c4e13f0267ff2e5f9abf8187c63f9929883a07"

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
