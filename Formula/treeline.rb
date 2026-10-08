class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded Claude Code, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.17.9.tar.gz"
  sha256 "94c418edc83d74f21c11bf0736439279f5193229bb8ea6471a16389d4b606baf"

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
