class RestartTouchBarServerFormula < Formula
  desc "Restart the TouchBarServer process to fix the flickering issue with the MacBook's TouchBar"
  homepage "https://github.com/acevif/restart-macbook-touch-bar-server"
  url "https://github.com/acevif/restart-macbook-touch-bar-server/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ここにtar.gzファイルのSHA256ハッシュを入力"
  license "MIT"

  def install
    bin.install "restart_touchbarserver.sh"
  end

  service do
    name macos: "io.github.acevif.restart-macbook-touch-bar-server"
    run [opt_bin/"restart_touchbarserver.sh"]
    keep_alive true
    log_path var/"log/restart_touchbarserver.log"
    error_log_path var/"log/restart_touchbarserver.log"
  end

  test do
    system "#{bin}/restart_touchbarserver.sh", "--version"
  end
end
