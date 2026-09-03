cask "wisp" do
  version "0.1.43"
  sha256 "7da78b7f4aeb31b6ef2b52b635ba1cf245180d205b306f16a6da47444462d171"

  url "https://github.com/sulemaanhamza/wisp/releases/download/v#{version}/Wisp-#{version}.zip"
  name "Wisp"
  desc "Dead-simple scratchpad that lives in the menu bar"
  homepage "https://github.com/sulemaanhamza/wisp"

  depends_on macos: :ventura

  app "Wisp.app"

  # Wisp isn't signed with a Developer ID, so Homebrew's own quarantine
  # would leave Gatekeeper refusing to open it. Strip the attribute from
  # every file in the bundle once it's installed. The step runs from
  # inside the app in the Caskroom stage (Homebrew symlinks the real
  # bundle there), because `xattr -r` doesn't follow the symlink.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "."], chdir: "Wisp.app", base: :staged_path
  end

  zap trash: [
    "~/Library/Application Support/Wisp",
    "~/Library/Preferences/com.sulemaanhamza.wisp.plist",
    "~/Library/Saved Application State/com.sulemaanhamza.wisp.savedState",
  ]
end
