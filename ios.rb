dep "cocoapods.gem" do
  installs "cocoapods"
  provides "pod"
end

dep "xcpretty.gem" do
  installs "xcpretty"
  provides "xcpretty"
end

dep "Alcatraz Package Manager" do
  met? {
    "~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin".p.exists?
  }

  meet {
    log_shell "Installing Alcatraz Package Manager", "curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh"
  }
end

dep "ios" do
  requires "cocoapods.gem"
  requires "xcpretty.gem"
  requires "Alcatraz Package Manager"
end
