class Worktrees < Formula
  desc "Per-worktree port and Postgres allocation for multi-worktree dev tools"
  homepage "https://github.com/markcipolla/worktrees"
  url "https://github.com/markcipolla/worktrees/archive/6f5047210539441ec9ab1e813815d7cc09dabef5.tar.gz"
  version "0.0.0-6f50472"
  sha256 "e2e6f54a79a26c1931eacdcfbdf9b246ea85e8fbce98299fd76f1e50acca99fb"

  depends_on "python@3.13"

  def install
    bin.install "worktrees"
  end

  test do
    assert_match "worktrees", shell_output("#{bin}/worktrees --help")
  end
end
