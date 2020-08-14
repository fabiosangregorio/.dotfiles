# Remove Xbox from Windows 10

> Source: [majorgeeks.com](https://www.majorgeeks.com/content/page/how_to_uninstall_the_game_bar_in_windows_10.html#:~:text=You%20can%20search%20for%20Xbox,xbox*%20%7C%20Remove%2DAppxPackage.)

1. Remove Xbox application
    ```bash
    Get-AppxPackage *xbox* | Remove-AppxPackage
    ```

2. Run `./xboxdvrdisable.reg`