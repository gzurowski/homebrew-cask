cask "memory-cleaner" do
  version "5.3.5,252"
  sha256 "68cd7255a7d6c2f9597d2b92b218d7989261c0dd92177c74469f78929d373ae8"

  url "https://download.nektony.com/download/memory-cleaner/dmg/memory-cleaner.dmg?build=#{version.csv.second}"
  name "Memory Cleaner"
  desc "Free up RAM manually and automatically"
  homepage "https://nektony.com/memory-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/memory-cleaner-x-site/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Memory Cleaner #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Application Scripts/com.nektony.Memory-Cleaner-SII*.launcher",
    "~/Library/Application Support/Memory Cleaner",
    "~/Library/Caches/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Cookies/com.nektony.Memory-Cleaner-SII.binarycookies",
    "~/Library/HTTPStorages/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Preferences/com.nektony.Memory-Cleaner-SII*.plist",
  ]
end
