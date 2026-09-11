# This file is written by markcipolla/transcribe's release workflow. Do not edit.
cask "transcribe" do
  version "0.1.0"
  sha256 "3734ceb95f9638a921bff43d6b8b7281e067cd3a30a91a3e9a02c99ea641972e"

  url "https://github.com/markcipolla/transcribe/releases/download/v#{version}/Transcribe-#{version}.zip"
  name "Transcribe"
  desc "On-device transcription of Google Meet and Microsoft Teams calls"
  homepage "https://github.com/markcipolla/transcribe"

  # The app updates itself with Sparkle; brew should not fight it.
  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Transcribe.app"

  # Releases are self-signed, not notarized, so Gatekeeper would refuse to open
  # a quarantined copy. Sparkle clears the flag on the updates it installs.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Transcribe.app"]
  end

  uninstall quit: "com.markcipolla.Transcribe"

  zap trash: [
    "~/Library/Caches/com.markcipolla.Transcribe",
    "~/Library/HTTPStorages/com.markcipolla.Transcribe",
    "~/Library/Preferences/com.markcipolla.Transcribe.plist",
  ]
end
