class Worktrees < Formula
  desc "Per-worktree port and Postgres allocation for multi-worktree dev tools"
  homepage "https://github.com/markcipolla/worktrees"
  url "https://github.com/markcipolla/worktrees/archive/3d2b5974c3009a91980d72bd9560c521cc1ec727.tar.gz"
  version "0.0.0-3d2b597"
  sha256 "092ea85135f2af20aa6f029043a0e0a676d8e4442a84ac4b95f792a9369bd199"

  depends_on "python@3.13"

  def install
    bin.install "worktrees"
  end

  test do
    assert_match "worktrees", shell_output("#{bin}/worktrees --help")
  end
end
