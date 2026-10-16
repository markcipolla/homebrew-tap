class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded Claude Code, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.17.13.tar.gz"
  sha256 "fc9e58fe0106da91e9365a6a3576e74f159a76235b98a99f4ef3579c06c9d1d0"

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
