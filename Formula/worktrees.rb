class Worktrees < Formula
  desc "Per-worktree port and Postgres allocation for multi-worktree dev tools"
  homepage "https://github.com/markcipolla/worktrees"
  url "https://github.com/markcipolla/worktrees/archive/769a218452bcbb3292817fd98c5948ff6f5daf42.tar.gz"
  version "0.0.0-769a218"
  sha256 "233723f787f0101743be566610a226e4ec20a5449dbf8bd3c7897abcc58af0d6"

  depends_on "python@3.13"

  def install
    bin.install "worktrees"
  end

  test do
    assert_match "worktrees", shell_output("#{bin}/worktrees --help")
  end
end
