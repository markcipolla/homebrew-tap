class Kanban < Formula
  desc "TUI kanban board for managing Claude Code tasks"
  homepage "https://github.com/markcipolla/claude-kanban"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/markcipolla/claude-kanban/releases/download/v0.1.0/kanban-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/markcipolla/claude-kanban/releases/download/v0.1.0/kanban-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "kanban"
  end

  test do
    assert_match "kanban", shell_output("#{bin}/kanban --help")
  end
end
