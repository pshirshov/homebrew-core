class Buku < Formula
  include Language::Python::Virtualenv

  desc "Powerful command-line bookmark manager"
  homepage "https://github.com/jarun/buku"
  url "https://github.com/jarun/buku/archive/refs/tags/v4.9.tar.gz"
  sha256 "1e432270ae78c7852110dcf2c2e215893bcc338299a4998f14a1f6b26e37bfac"
  license "GPL-3.0-or-later"
  head "https://github.com/jarun/buku.git", branch: "master"

  bottle do
    rebuild 4
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "54bc3f98c2debe496743aaab4e5c37921d9b008dad17bbc4ab47a0c8981eafcb"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "1f69719f052db25dc67d89df7724e1e0e64c21a5c58cfbbaab6caca374148909"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "e17e61ac2ceba71d5919ddc88ba60f918546961f1fa6517d5467b57ade9dff2d"
    sha256 cellar: :any_skip_relocation, sonoma:         "34edd631b154a0107f137810228aa3f16a51c8219b9ddf16701a7f9d561d1e73"
    sha256 cellar: :any_skip_relocation, ventura:        "3058fd288d2f7f2455616abb4668587cdd870f6b87345b3152b527868cd04248"
    sha256 cellar: :any_skip_relocation, monterey:       "5d6dba6e3e67b70f6a9f341f42c52939e1e1e45b2119b0a9602cf3897525355d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "867652b95594c2ea2ee4897f67ff754d5393584aa87cf5bac2fab2b2787a0e24"
  end

  depends_on "certifi"
  depends_on "cryptography"
  depends_on "python@3.12"

  uses_from_macos "expect" => :test
  uses_from_macos "libffi"

  resource "arrow" do
    url "https://files.pythonhosted.org/packages/2e/00/0f6e8fcdb23ea632c866620cc872729ff43ed91d284c866b515c6342b173/arrow-1.3.0.tar.gz"
    sha256 "d4540617648cb5f895730f1ad8c82a65f2dad0166f57b75f3ca54759c4d67a85"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
    sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "dominate" do
    url "https://files.pythonhosted.org/packages/fb/f3/1c8088ff19a0fcd9c3234802a0ee47006ea64bd8852f1019194f0e3583ff/dominate-2.9.1.tar.gz"
    sha256 "558284687d9b8aae1904e3d6051ad132dd4a8c0cf551b37ea4e7e42a31d19dc4"
  end

  resource "flask" do
    url "https://files.pythonhosted.org/packages/5f/76/a4d2c4436dda4b0a12c71e075c508ea7988a1066b06a575f6afe4fecc023/Flask-2.2.5.tar.gz"
    sha256 "edee9b0a7ff26621bd5a8c10ff484ae28737a2410d99b0bb9a6850c7fb977aa0"
  end

  resource "flask-admin" do
    url "https://files.pythonhosted.org/packages/be/4d/7cad383a93e3e1dd9378f1fcf05ddc532c6d921fb30c19ce8f8583630f24/Flask-Admin-1.6.1.tar.gz"
    sha256 "24cae2af832b6a611a01d7dc35f42d266c1d6c75a426b869d8cb241b78233369"
  end

  resource "flask-api" do
    url "https://files.pythonhosted.org/packages/dd/4f/49bd943d2ceeb2e5872a182b1547f7eadc53121e1ceea0f8718f1a97c4cc/Flask-API-3.1.tar.gz"
    sha256 "cb079845f5573eac55c6800a9a142bd7b54fd1227019a21cb2f75dfe5311d44f"
  end

  resource "flask-bootstrap" do
    url "https://files.pythonhosted.org/packages/88/53/958ce7c2aa26280b7fd7f3eecbf13053f1302ee2acb1db58ef32e1c23c2a/Flask-Bootstrap-3.3.7.1.tar.gz"
    sha256 "cb08ed940183f6343a64e465e83b3a3f13c53e1baabb8d72b5da4545ef123ac8"
  end

  resource "flask-paginate" do
    url "https://files.pythonhosted.org/packages/31/e2/cc5ba32420eeb994ae0f9fc31c066b7e96279036b54a39bd7a53978c7730/flask-paginate-2024.3.28.tar.gz"
    sha256 "3d600e3ff035cc5f0322812049772e96fa9c48b397cc58b1ba13c78ee10db7c8"
  end

  resource "flask-wtf" do
    url "https://files.pythonhosted.org/packages/9b/ef/b6ec35e02f479f6e76e02ede14594c9cfa5e6dcbab6ea0e82fa413993a2a/flask_wtf-1.2.1.tar.gz"
    sha256 "8bb269eb9bb46b87e7c8233d7e7debdf1f8b74bf90cc1789988c29b37a97b695"
  end

  resource "html5lib" do
    url "https://files.pythonhosted.org/packages/ac/b6/b55c3f49042f1df3dcd422b7f224f939892ee94f22abcf503a9b7339eaf2/html5lib-1.1.tar.gz"
    sha256 "b2e5b40261e20f354d198eae92afc10d750afb487ed5e50f9c4eaf07c184146f"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/7f/a1/d3fb83e7a61fa0c0d3d08ad0a94ddbeff3731c05212617dff3a94e097f08/itsdangerous-2.1.2.tar.gz"
    sha256 "5dbbc68b317e5e42f327f9021763545dc3fc3bfe22e6deb96aaf1fc38874156a"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/b2/5e/3a21abf3cd467d7876045335e681d276ac32492febe6d98ad89562d1a7e1/Jinja2-3.1.3.tar.gz"
    sha256 "ac8bd6544d4bb2c9792bf3a159e80bba8fda7f07e81bc3aed565432d5925ba90"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
    sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/ce/21/952a240de1c196c7e3fbcd4e559681f0419b1280c617db21157a0390717b/soupsieve-2.5.tar.gz"
    sha256 "5663d5a7b3bfaeee0bc4372e7fc48f9cff4940b3eec54a6451cc5299f1097690"
  end

  resource "types-python-dateutil" do
    url "https://files.pythonhosted.org/packages/61/c5/c3a4d72ffa8efc2e78f7897b1c69ec760553246b67d3ce8c4431fac5d4e3/types-python-dateutil-2.9.0.20240316.tar.gz"
    sha256 "5d2f2e240b86905e40944dd787db6da9263f0deabef1076ddaed797351ec0202"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/0c/39/64487bf07df2ed854cc06078c27c0d0abc59bd27b32232876e403c333a08/urllib3-1.26.18.tar.gz"
    sha256 "f8ecc1bba5667413457c529ab955bf8c67b45db799d159066261719e328580a0"
  end

  resource "visitor" do
    url "https://files.pythonhosted.org/packages/d7/58/785fcd6de4210049da5fafe62301b197f044f3835393594be368547142b0/visitor-0.1.3.tar.gz"
    sha256 "2c737903b2b6864ebc6167eef7cf3b997126f1aa94bdf590f90f1436d23e480a"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "werkzeug" do
    url "https://files.pythonhosted.org/packages/3d/4b/d746f1000782c89d6c97df9df43ba8f4d126038608843d3560ae88d201b5/werkzeug-2.3.8.tar.gz"
    sha256 "554b257c74bbeb7a0d254160a4f8ffe185243f52a52035060b761ca62d977f03"
  end

  resource "wtforms" do
    url "https://files.pythonhosted.org/packages/6a/c7/96d10183c3470f1836846f7b9527d6cb0b6c2226ebca40f36fa29f23de60/wtforms-3.1.2.tar.gz"
    sha256 "f8d76180d7239c94c6322f7990ae1216dae3659b7aa1cee94b6318bdffb474b9"
  end

  def install
    virtualenv_install_with_resources
    man1.install "buku.1"
    bash_completion.install "auto-completion/bash/buku-completion.bash" => "buku"
    fish_completion.install "auto-completion/fish/buku.fish"
    zsh_completion.install "auto-completion/zsh/_buku"
  end

  test do
    ENV["LC_ALL"] = "en_US.UTF-8"
    ENV["XDG_DATA_HOME"] = "#{testpath}/.local/share"

    # Firefox exported bookmarks file
    (testpath/"bookmarks.html").write <<~EOS
      <!DOCTYPE NETSCAPE-Bookmark-file-1>
      <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
      <TITLE>Bookmarks</TITLE>
      <H1>Bookmarks Menu</H1>

      <DL><p>
          <HR>    <DT><H3 ADD_DATE="1464091987" LAST_MODIFIED="1477369518" PERSONAL_TOOLBAR_FOLDER="true">Bookmarks Toolbar</H3>
          <DD>Add bookmarks to this folder to see them displayed on the Bookmarks Toolbar
          <DL><p>
              <DT><A HREF="https://github.com/Homebrew/brew" ADD_DATE="1477369518" LAST_MODIFIED="1477369529">Title unknown</A>
          </DL><p>
      </DL>
    EOS

    system bin/"buku", "--nostdin", "--nc", "--tacit", "--import", "bookmarks.html"
    assert_equal <<~EOS, shell_output("#{bin}/buku --nostdin --nc --print").chomp
      1. Title unknown
         > https://github.com/Homebrew/brew
         # bookmarks toolbar
    EOS

    # Test online components -- fetch titles
    assert_match "Index 1: updated", shell_output("#{bin}/buku --nostdin --nc --update")

    # Test crypto functionality
    (testpath/"crypto-test").write <<~EOS
      # Lock bookmark database
      spawn #{bin}/buku --lock
      expect "Password: "
      send "password\r"
      expect "Password: "
      send "password\r"
      expect {
          -re ".*ERROR.*" { exit 1 }
          "File encrypted"
      }

      # Unlock bookmark database
      spawn #{bin}/buku --unlock
      expect "Password: "
      send "password\r"
      expect {
          -re ".*ERROR.*" { exit 1 }
          "File decrypted"
      }
    EOS
    system "expect", "-f", "crypto-test"

    # Test database content and search
    result = shell_output("#{bin}/buku --np --sany Homebrew")
    assert_match "https://github.com/Homebrew/brew", result
    assert_match "The missing package manager for macOS", result

    # Test bukuserver
    result = shell_output("#{bin}/bukuserver --version")
    assert_match version.to_s, result

    port = free_port
    pid = fork do
      $stdout.reopen("/dev/null")
      $stderr.reopen("/dev/null")
      exec "#{bin}/bukuserver", "run", "--host", "127.0.0.1", "--port", port.to_s
    end

    begin
      sleep 10
      result = shell_output("curl -s 127.0.0.1:#{port}/api/bookmarks")
      assert_match "https://github.com/Homebrew/brew", result
      assert_match "The missing package manager for macOS", result
    ensure
      Process.kill "SIGINT", pid
      Process.wait pid
    end
  end
end
