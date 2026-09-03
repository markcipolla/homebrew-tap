class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded opencode, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "c8186f1677f8df08f2f1e7143a0a7361eb519b307d7d464a1038aa9289b7329e"

  depends_on "go" => :build
  depends_on "opencode"

  def install
    system "go", "build", *std_go_args(output: bin/"treeline", ldflags: "-s -w -X main.version=#{version}")
    system "go", "build", *std_go_args(output: bin/"tide", ldflags: "-s -w -X main.version=#{version}"), "./cmd/tide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treeline version")
    assert_match version.to_s, shell_output("#{bin}/tide version")
  end
end
