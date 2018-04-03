
class Xi < Formula
  desc "The xi editor project is an attempt to build a high quality text editor"
  homepage "https://google.github.io/xi-editor/"
  head "https://github.com/google/xi-mac.git"

  depends_on "rust" => :build
  depends_on :xcode => ["9.0", :build]
  depends_on "cmake"

  def install
    system "git", "clone", "https://github.com/google/xi-editor.git"
    system "xcodebuild"
  end

  test do
    system "false"
  end
end
