class Worktrees < Formula
  desc "Per-worktree port and Postgres allocation for multi-worktree dev tools"
  homepage "https://github.com/markcipolla/worktrees"
  url "https://github.com/markcipolla/worktrees/archive/4976dc92863cefce82eb8624558ccabca6c4650d.tar.gz"
  version "0.0.0-4976dc9"
  sha256 "1c622f90ffc87a13fbb58c860e3afecb26df203a99c7da0f7af2c25f6ae97476"

  depends_on "python@3.13"

  def install
    bin.install "worktree-env"
  end

  test do
    assert_match "worktree-env", shell_output("#{bin}/worktree-env --help")
  end
end
