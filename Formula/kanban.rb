class Kanban < Formula
  desc "TUI kanban board for managing Claude Code tasks"
  homepage "https://github.com/markcipolla/claude-kanban"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/markcipolla/claude-kanban/releases/download/v0.1.0/kanban-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c06c1e74ae9dabdbbd88106d5718ed16395e3afba989b0f94e5e8506dfd2f854"
    end
    on_intel do
      url "https://github.com/markcipolla/claude-kanban/releases/download/v0.1.0/kanban-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c157731b2c435ea30d1b3d0ee481bdf78b800e7134a3c581da441b5db70b44a1"
    end
  end

  def install
    bin.install "kanban"
  end

  test do
    assert_match "kanban", shell_output("#{bin}/kanban --help")
  end
end
