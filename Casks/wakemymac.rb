cask "wakemymac" do
  version "1.0.0"
  sha256 "47d9a2a4d973a16ccc7fa4e7a54042710f15d344e840f50eb6a94add101f1dc2"

  url "https://github.com/muarifer/wakemymac/releases/download/v#{version}/WakeMyMac-#{version}.zip"
  name "WakeMyMac"
  desc "Menu bar app that wakes, sleeps or shuts down your Mac on schedule"
  homepage "https://github.com/muarifer/wakemymac"

  depends_on macos: :ventura

  app "WakeMyMac.app"

  caveats <<~EOS
    The helper daemon needs one-time approval after clicking Install:
      System Settings → General → Login Items → allow WakeMyMac
  EOS
end
