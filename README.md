##  Restart Macbook TouchBarServer

To mitigate the issue of the MacBook's TouchBar flickering, this deamon will restart the TouchBarServer daily.

## Install

### Homebrew

WIP

### Manual Install

1. Copy the `io.github.acevif.restart-macbook-touch-bar-server.plist` file to the `/Library/LaunchDaemons/` directory.
   ```zsh
   sudo cp ./io.github.acevif.restart-macbook-touch-bar-server.plist /Library/LaunchDaemons/
   ```
2. Place the `restart_touchbarserver` script in `/usr/local/bin/`, and make it executable (`chmod +x /usr/local/bin/restart_touchbarserver`).
   ```zsh
   sudo cp ./restart_touchbarserver /usr/local/bin/
   ```
3. Either reboot the system or run the following command to load the LaunchDaemon:
   ```
   sudo launchctl load -w /Library/LaunchDaemons/io.github.acevif.restart-macbook-touch-bar-server.plist
   ```

## Diagnostics

- Logs will be saved to `/var/log/restart_touchbarserver.log`.

