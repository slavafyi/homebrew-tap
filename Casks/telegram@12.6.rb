cask "telegram@12.6" do
  version "12.6,279903"
  sha256 "b8a09a297a4b72ea4ea4de1ac71ded507f4215c0f443c02f897c04966fce2ebe"

  url "https://osx.telegram.org/updates/Telegram-#{version.before_comma}.#{version.after_comma}.app.zip"
  name "Telegram for macOS"
  desc "Messaging app with a focus on speed and security"
  homepage "https://macos.telegram.org/"

  livecheck do
    skip "Pinned to Telegram 12.6 build 279903"
  end

  conflicts_with cask: "telegram"

  app "Telegram.app"

  uninstall quit: "ru.keepcoder.Telegram"
end

