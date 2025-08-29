# **RadioVibe.nvim** 🎧
### **A Cozy, Vibe-Focused Music Player for Neovim**

---

### **Overview**

**RadioVibe.nvim** is a lightweight and aesthetically pleasing music player plugin for Neovim. It brings the cozy, nostalgic feel of a lo-fi or chill-hop radio station directly into your editor with a dynamic, animated ASCII art display and integrated music playback. This plugin is designed for developers who want to set a relaxed coding atmosphere without leaving their Neovim environment.

---

### **Features**

-   **Floating ASCII Art Display**: A minimalist, animated floating window with a charming ASCII character.
-   **Integrated Music Player**: Built-in functionality to play music files using **mpv** as a backend. There's no need for a separate terminal or application.
-   **Playback Controls**: You can easily toggle playback, adjust volume, and control looping directly from Neovim commands.
-   **Customizable**: Configure the music path, mpv executable, and animation frames to suit your preferences.
-   **Clean and Unobtrusive**: The floating window can be toggled on and off, allowing you to focus on your code when you need to.

---

### **Requirements**

-   Neovim **0.8** or higher
-   **mpv**: The media player must be installed and accessible in your system's PATH.

---

### **Installation**

Install `radiovibe.nvim` using your favorite plugin manager.

#### **[lazy.nvim](https://github.com/folke/lazy.nvim)**

```lua
{
  'ThePikachuDev/radioVibe.nvim', 
  config = function()
    require('radiovibe').setup({
      music_path = '~/Music/lo-fi-beats.mp3',
    })
  end
}
``` 


### Usage

- Once installed, you can use the following user commands:
Command	Description
| Command                    | Usage                                         |
|----------------------------|-----------------------------------------------|
| `:RadioVibePlay`           | Starts playing the default configured music.  |
| `:RadioVibePlayFile <path>`| Starts playing a specific music file.         |
| `:RadioVibeStop`           | Stops the music playback.                     |
| `:RadioVibeToggleMusic`    | Toggles music playback (play/pause).          |
| `:RadioVibeVolumeUp`       | Increases the music volume by 5%.             |
| `:RadioVibeVolumeDown`     | Decreases the music volume by 5%.             |
| `:RadioVibeToggleLoop`     | Toggles looping the current track.            |
| `:RadioVibeShow`           | Opens the animated ASCII art window.          |
| `:RadioVibeHide`           | Closes the animated ASCII art window.         |
| `:RadioVibeToggle`         | Toggles the visibility of the ASCII art window. |

### Example Keymappings

```lua
-- Example keymappings for RadioVibe.nvim
-- For quick access, add these to your init.lua:

-- Toggle the music and window with a single key
vim.keymap.set('n', '<leader>rv', ':RadioVibeToggle<CR>')

-- Bind volume controls
vim.keymap.set('n', '<leader>vu', ':RadioVibeVolumeUp<CR>')
vim.keymap.set('n', '<leader>vd', ':RadioVibeVolumeDown<CR>')

-- Play/Stop a specific file for a session
vim.keymap.set('n', '<leader>rp', function()
    vim.cmd('RadioVibePlay')
end)

```


### Credits
the test musics and ascii arts are not mine, i just made them for this plugin. i don't own the rights to them. if you are the creator of these musics and arts, please contact me if you wanna remove them from here , thanks for your understanding .

### Contributing

Contributions are welcome! If you have ideas for new features, bug fixes, or new ASCII art frames, feel free to submit a pull request or open an issue on the GitHub repository.

---

### **License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
