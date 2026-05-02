cask "wisp" do
  version "0.1.33"
  sha256 "e7a1b5d6a0c29d0e0ec16e7869b34325f0c7f6e992b0e52baf4a1d01b0a4bb0b"

  url "https://github.com/sulemaanhamza/wisp/releases/download/v#{version}/Wisp-#{version}.zip"
  name "Wisp"
  desc "Dead-simple macOS scratchpad — menu bar, ⌥Space to summon, type, dismiss"
  homepage "https://github.com/sulemaanhamza/wisp"

  depends_on macos: ">= :ventura"

  app "Wisp.app"

  zap trash: [
    "~/Library/Application Support/Wisp",
    "~/Library/Preferences/com.sulemaanhamza.wisp.plist",
    "~/Library/Saved Application State/com.sulemaanhamza.wisp.savedState",
  ]
end
