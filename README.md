# OSX Dotfiles

These are my dotfiles for getting my environment setup on OSX. 

# Preparation

Before you start make sure you setup 8 workspaces, turn on the key commands
manually to switch between workspaces, and disable SIP protection (reboot into
recovery)

# Installing programs

To install all programs just run the `install-programs.sh` script:

```terminal
$ ./install-programs.sh
```

# Symlink Dotfiles

To symlink dotfiles just run the `install` file:

```terminal
$ ./install
```

### Codesign chunkwm binary
Accessibility API must be granted after every update to chunkwm, unless you codesign the
binary with self-signed certificate before restarting

Create code signing certificate named "chunkwm-cert" using Keychain Access.app:

* Open Keychain Access.app
* From menu select ```Keychain Access -> Certificate Assistant -> Create a certificate```
* Fill the certificate form:
    * Name: chunkwm-cert
    * Identity Type: Self Signed Root
    * Certificate Type: Code Signing

Sign the binary:

```
codesign -fs "chunkwm-cert" /usr/local/opt/chunkwm/bin/chunkwm
```

To have launchd start crisidev/chunkwm/chunkwm now and restart at login:

```
brew services start crisidev/chunkwm/chunkwm
```
