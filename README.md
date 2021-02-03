# Environment Setup

Sets up some common bash aliases and functions on a new computer.

## Installation

The following commands will clone this repository into the home directory, and then run the included setup script.

```bash
  cd
  git clone git@github.com:christopherchiles1/env_setup.git
  sh env_setup/setup.sh
  source ~/.bash_profile
```


## TODOs

### Add script to auto-fix beeping keybindings
atom makes an annoying beep when I use certain commands like `^+cmd+down`.

chromium contains a [workaround](https://bugs.chromium.org/p/chromium/issues/detail?id=916460), binding the keys at the OS level:

Create `~/Library/KeyBindings/DefaultKeyBinding.dict` with contents:
```
{
  "^@\UF701" = "noop";
  "^@\UF702" = "noop";
  "^@\UF703" = "noop";
}
```
