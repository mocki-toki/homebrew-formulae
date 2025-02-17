cask "barik" do
  version '0.4.1'
  sha256 "94fdd03b8539e962efe8a16eda7525de790e654c49166b8d482855dae272d20a"

  url "https://github.com/mocki-toki/barik/releases/download/#{version}/Barik.zip"
  name "Barik"
  desc "Barik is a macOS menu bar replacement, with yabai and AeroSpace support"
  homepage "https://github.com/mocki-toki/barik"

  depends_on macos: ">= :sonoma" # macOS 14.6+

  postflight do
    system "xattr -d com.apple.quarantine #{staged_path}/Barik.app"
  end

  app "Barik.app"
end