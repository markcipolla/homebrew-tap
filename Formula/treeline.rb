class Treeline < Formula
  desc "Git worktree TUI with Linear cards, embedded Claude Code, and staging"
  homepage "https://github.com/markcipolla/treeline"
  url "https://github.com/markcipolla/treeline/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "eda61da38e89558ee3e5bb7996dee33a0b4d0c0a33585d995be589d5edc2c720"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treeline version")
  end
end
