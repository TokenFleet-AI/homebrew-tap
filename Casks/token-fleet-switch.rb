cask "token-fleet-switch" do
  version "1.0.0"

  name "TokenFleet Switch"
  desc "AI gateway control panel — manage providers, models, and API channel chains"
  homepage "https://github.com/TokenFleet-AI/token-fleet-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_arm do
    url "https://github.com/TokenFleet-AI/token-fleet-switch/releases/download/v#{version}/TokenFleet%20Switch_#{version}_aarch64.dmg"
    sha256 "99dcf09c332cbcc49d8e42b1b2c831408c60d5e1bac73fd245f05e78e142becf"
  end

  on_intel do
    url "https://github.com/TokenFleet-AI/token-fleet-switch/releases/download/v#{version}/TokenFleet%20Switch_#{version}_x64.dmg"
    sha256 "TODO_FILL_AFTER_RELEASE"
  end

  app "TokenFleet Switch.app"

  zap trash: [
    "~/Library/Application Support/com.tokenfleet.switch",
    "~/Library/Caches/com.tokenfleet.switch",
    "~/Library/Preferences/com.tokenfleet.switch.plist",
    "~/.tokenfleet-ai",
  ]
end
