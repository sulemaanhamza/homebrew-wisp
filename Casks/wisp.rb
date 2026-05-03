cask "wisp" do
  version "0.1.36"
  sha256 "51c920aa3726ba600a2fbd18883b007fd12a8242cd47033d908d2a6a2c3ba586"

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
