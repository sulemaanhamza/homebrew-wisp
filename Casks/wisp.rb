cask "wisp" do
  version "0.1.35"
  sha256 "85ffb5c1fa1d643a8afb067045de87460b2f9b7761a27bc78ce178e109d06092"

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
