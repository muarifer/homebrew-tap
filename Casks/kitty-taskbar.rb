cask "kitty-taskbar" do
  version "1.0.2"
  sha256 "4de27346c95bcd07d558a2011b7e5bcabf7eb75318618d058b6021d5e59ec67b"

  url "https://github.com/muarifer/kitty-taskbar/releases/download/v#{version}/KittyTaskbar-#{version}.zip"
  name "KittyTaskbar"
  desc "Menu bar taskbar for kitty terminal windows and tabs"
  homepage "https://github.com/muarifer/kitty-taskbar"

  depends_on macos: :ventura

  app "KittyTaskbar.app"

  caveats <<~EOS
    Requires kitty remote control in ~/.config/kitty/kitty.conf:
      allow_remote_control yes
      listen_on unix:/tmp/kitty-{kitty_pid}
  EOS
end
