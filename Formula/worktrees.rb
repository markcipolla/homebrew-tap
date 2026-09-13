class Worktrees < Formula
  desc "Per-worktree port and Postgres allocation for multi-worktree dev tools"
  homepage "https://github.com/markcipolla/worktrees"
  url "https://github.com/markcipolla/worktrees/archive/bb52b5c357999befff5d49c57af333792170b87b.tar.gz"
  version "0.0.0-bb52b5c"
  sha256 "abb8c1767d523cfb19387c08b34f95e03e97210c1e8716210b2ded9f3c6fa01d"

  depends_on "python@3.13"

  def install
    bin.install "worktrees"
  end

  test do
    assert_match "worktrees", shell_output("#{bin}/worktrees --help")
  end
end
