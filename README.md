# simple dotfiles
## dependencies
### zsh
> Note: this zshrc is already configured ie there is no need to add the extra lines given here if you are using this zshrc. just ensure dependencies are installed.
----
- **pure prompt**
    
    :heavy_exclamation_mark:*install*
    ```
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
    ```
    *Copy and paste into zshrc*
    ```
    #zshrc
    fpath+=($HOME/.zsh/pure)
    autoload -U promptinit; promptinit
    prompt pure
    ```
    *or,*
    ```
    echo fpath+=($HOME/.zsh/pure) >> ~/.zshrc 
    echo autoload -U promptinit >> ~/.zshrc
    echo promptinit >> ~/.zshrc
    echo primpt pure >> ~/.zshrc
    source ~/.zshrc
    ```

    ----
- **eza**
    
    :heavy_exclamation_mark:*install*
    ```
    sudo apt update
    sudo apt install -y gpg

    sudo mkdir -p /etc/apt/keyrings
    wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
    echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
    sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
    sudo apt update
    sudo apt install -y eza
    ```
    ----
- **fzf**

    :heavy_exclamation_mark:*install*
    ```
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    ```
    *Copy and paste into zshrc*
    ```
    # zshrc
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    ```
    *or,*
    ```
    echo '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' >> ~/.zshrc
    source ~/.zshrc
    ```
    ----

- **zsh-autocomplete**

    :heavy_exclamation_mark:*install*
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    ```
    *Copy and paste into zshrc*
    ```
    # zshrc
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 
    ```
    *or,*
    ```
    echo source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc
    source ~/.zshrc
    ```
    ----


