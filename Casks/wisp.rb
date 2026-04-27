cask "wisp" do
  version "0.1.31"
  sha256 "051047225398b8522dbf9f6230619bf2b5cd57a7b1954ada4147e1c53e17be91"

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
