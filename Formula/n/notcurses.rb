class Notcurses < Formula
  desc "Blingful character graphics/TUI library"
  homepage "https://nick-black.com/dankwiki/index.php/Notcurses"
  url "https://github.com/dankamongmen/notcurses/archive/refs/tags/v3.0.9.tar.gz"
  sha256 "e5cc02aea82814b843cdf34dedd716e6e1e9ca440cf0f899853ca95e241bd734"
  license "Apache-2.0"
  revision 3

  bottle do
    sha256 arm64_sonoma:   "264526a0ea6a5faf326959a7bcb688e2bb11431bf8c7f517fcd9129a3d4eb674"
    sha256 arm64_ventura:  "e79bcc299bdeb6c17b69be034d770a76a2d0ec223382a53a45e7e112a06d4102"
    sha256 arm64_monterey: "e3f401e6e601fb82df8a65c05e13e285f026d2b298448e4ee172938229fa34b6"
    sha256 arm64_big_sur:  "b710c750bb84039f678d31edbe404b127604ee90233e153f921535ffce6b088a"
    sha256 sonoma:         "5a4a1057bf87c86e60f5b4444efb9a4cf7a9150ff273ba2ab1a18c0228059be1"
    sha256 ventura:        "578b1284c0ea2a18e83091ec220396ec7850035ad7144b68295c02236b75b740"
    sha256 monterey:       "1634302f1130997990d65d7d9b95fda1bc5c7c00f2e476a51515387b4c113b77"
    sha256 big_sur:        "48b5c695a7af99908369b2aeae0489b9f4aaf4ec9cb03eddec86d912e05f011f"
    sha256 x86_64_linux:   "4fcab7c51b5746f29ff6e2ff1e33940e04a8c58006a1543ed0bec6acb2c13708"
  end

  depends_on "cmake" => :build
  depends_on "doctest" => :build
  depends_on "pandoc" => :build
  depends_on "pkg-config" => :build
  depends_on "ffmpeg"
  depends_on "libdeflate"
  depends_on "libunistring"
  depends_on "ncurses"

  fails_with gcc: "5"

  # Fix build with FFmpeg 7.0.
  # Remove when included in a release.
  # https://github.com/dankamongmen/notcurses/issues/2688
  patch do
    url "https://github.com/dankamongmen/notcurses/commit/9d4c9e00836df4edd6db09e82e3042816b435c3c.patch?full_index=1"
    sha256 "e977892c93b54dd86a95db7af14fcefcc4f7bd023fa3c7a8cf4d9eeefbba9883"
  end
  patch do
    url "https://github.com/dankamongmen/notcurses/commit/bed402adf98ae51efeb9ac3a71f88facfbf7290c.patch?full_index=1"
    sha256 "a6969365db2b7e59085fa382b016a0dac1a8c6a493909c8e3ac17e7f7b4dccb3"
  end
  patch do
    url "https://github.com/dankamongmen/notcurses/commit/441d66a063c7fc86436ed7ff73984050434c9142.patch?full_index=1"
    sha256 "aee69211bf5280bb773360a0f206e79f825ae86dbb7e05117d69acfa12917c13"
  end

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args, "-DCMAKE_INSTALL_RPATH=#{rpath}"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # current homebrew CI runs with TERM=dumb. given that Notcurses explicitly
    # does not support dumb terminals (i.e. those lacking the "cup" terminfo
    # capability), we expect a failure here. all output will go to stderr.
    assert_empty shell_output("#{bin}/notcurses-info", 1)
  end
end
