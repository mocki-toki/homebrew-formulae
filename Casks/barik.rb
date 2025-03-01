cask "barik" do
  version '0.5.1'
  sha256 "c858254283fbc096aaa4e61dd15be7a0ac565595129d2285295ab933b5e060b5"

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
