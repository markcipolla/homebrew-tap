class Worktrees < Formula
  desc "Per-worktree port and Postgres allocation for multi-worktree dev tools"
  homepage "https://github.com/markcipolla/worktrees"
  url "https://github.com/markcipolla/worktrees/archive/6fdc8070e313d8f2a376e7fededb9f5e4352140e.tar.gz"
  version "0.0.0-6fdc807"
  sha256 "ea4ec48c2a1246a44bb849247f492ea7c396fe0f37ea1fab4b397b2ec70e48ef"

  depends_on "python@3.13"

  def install
    bin.install "worktrees"
  end

  test do
    assert_match "worktrees", shell_output("#{bin}/worktrees --help")
  end
end
