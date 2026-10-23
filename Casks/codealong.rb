# Moved to each new release by codealong/codealong's homebrew.yml once the release is published:
# the version and the disk image's checksum, nothing else. Change the rest here.
cask "codealong" do
  version "0.5.0"
  sha256 "2b1efac6997a48e0f89d4d8d49bef8af3580846d43c6bc6d01dfccd9aa53e3a6"

  url "https://github.com/codealong/codealong/releases/download/v#{version}/Codealong_#{version}_universal.dmg"
  name "Codealong"
  desc "Board for every coding agent you run, across tools and accounts"
  homepage "https://www.codealong.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app installs its own updates, so `brew upgrade` leaves it to them.
  auto_updates true
  depends_on macos: :ventura

  app "Codealong.app"
  # The app's own binary is also the `codealong` command for agents and terminals.
  binary "#{appdir}/Codealong.app/Contents/MacOS/codealong"

  uninstall quit: "app.codealong.desktop"

  zap trash: [
    "~/Library/Application Support/Codealong",
    "~/Library/Caches/app.codealong.desktop",
    "~/Library/Caches/codealong",
    "~/Library/HTTPStorages/app.codealong.desktop",
    "~/Library/Logs/Codealong",
    "~/Library/Preferences/app.codealong.desktop.plist",
    "~/Library/Saved Application State/app.codealong.desktop.savedState",
    "~/Library/WebKit/app.codealong.desktop",
  ]
end
