cask "dockintercept" do
  version "1.0.0"
  sha256 "c7be6683b9592875cc4931c34a2dd6426d942c0b2167e745e58fe28fc7f81beb"

  url "https://github.com/MR-MANDELBROT/DockIntercept/releases/download/v#{version}/DockIntercept-#{version}.dmg",
      verified: "github.com/MR-MANDELBROT/DockIntercept/"
  name "DockIntercept"
  desc "Extended right-click context menu for files and folders in the macOS Dock"
  homepage "https://github.com/MR-MANDELBROT/DockIntercept"

  depends_on macos: :monterey

  app "DockIntercept.app"

  uninstall quit: "de.maxmarquart.DockIntercept"

  zap trash: [
    "~/Library/Preferences/de.maxmarquart.DockIntercept.plist",
  ]

  caveats <<~EOS
    DockIntercept needs Accessibility permission to read Dock items.
    On first launch, grant it under:
      System Settings → Privacy & Security → Accessibility
  EOS
end
