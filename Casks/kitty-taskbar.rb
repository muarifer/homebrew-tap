cask "kitty-taskbar" do
  version "1.0.4"
  sha256 "3d1e7ce043aff63e36d70ce5d39a8ed38e2744833dbecdb29585e5003cd4e830"

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
