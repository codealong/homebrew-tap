# Moved to each new release by codealong/codealong's homebrew.yml once the release is published:
# the version and the disk image's checksum, nothing else. Change the rest here.
cask "codealong" do
  version "0.1.0"
  sha256 "82697dd63c671123a99678b1d026f281e7d6e49569e7a5a5aa9981f04406b87d"

  url "https://github.com/codealong/codealong/releases/download/v#{version}/Codealong_#{version}_universal.dmg"
  name "Codealong"
  desc "Board for every coding agent you run, across tools and accounts"
  homepage "https://github.com/codealong/codealong"

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
