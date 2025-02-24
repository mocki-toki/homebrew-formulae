cask "barik" do
  version '0.5.0'
  sha256 "3d44fc72d28049f7a73a415231cdf8179c58c1ab570f951b13ccd0cdcbab07ce"

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
