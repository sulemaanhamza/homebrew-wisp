cask "wisp" do
  version "0.1.30"
  sha256 "c965ab661e1f5a1d915dbc77d8d90e238aac3a9e1d881afb623d88fa844b20e0"

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
