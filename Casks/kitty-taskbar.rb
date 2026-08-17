cask "kitty-taskbar" do
  version "1.0.1"
  sha256 "8681a2d0d3e707bf3f5983d4a1e44e24be933f1b67f499dbbaced937a4fb05d4"

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
