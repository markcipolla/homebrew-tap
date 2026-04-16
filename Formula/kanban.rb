class Kanban < Formula
  desc "TUI kanban board for managing Claude Code tasks"
  homepage "https://github.com/markcipolla/claude-kanban"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/markcipolla/claude-kanban/releases/download/v0.1.1/kanban-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d299fdacd75d68f00fabce3ba70bc94a2648bdfa762d9a376e821b9514d66b01"
    end
    on_intel do
      url "https://github.com/markcipolla/claude-kanban/releases/download/v0.1.1/kanban-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "b957c4d176dc7d630e8f7fa473c972caf380eb1c568b8a08457911996de98155"
    end
  end

  def install
    bin.install "kanban"
  end

  test do
    assert_match "kanban", shell_output("#{bin}/kanban --help")
  end
end
