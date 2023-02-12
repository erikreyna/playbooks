# Playbooks

My personal Ansible playbooks for various things, primarily setting up new machines. (OSX M1 chips only for now)

## Pre Installation

- Sign into your icloud account before running this.
- With managed machines, sometimes they come shipped with software, like Slack, Firefox / Chrome. You might want to delete those apps before running this script as it will fail. We want the scripts to handle all application installation.

## Installation

If you already have ansible installed you can [ansible pull](https://docs.ansible.com/ansible/latest/cli/ansible-pull.html) otherwise you can run the [setup-machine.zsh](https://github.com/erikreyna/playbooks/blob/main/bin/setup-machine.zsh) script.

When asked for the BECOME pass, it is your computer pass.

```zsh
./bin/setup-machine.zsh
```

## Post Installation

Run `exec zsh` or close and reopen your terminal for some settings to take effect.

The GH cli tool is installed, you can set up your Github credentials by running these commands. Make sure you fill the commands in with your respective info. Follow the Github prompts for the login process.

```zsh
git config --global user.email "you@example.com" && \
git config --global user.name "Your Name" && \
gh auth login
```

You can also run the tasks as much as you want, no need to install pip and all those things, you can skip to `ansible-playbook -i "localhost," -c local local.yml`

## VSCode settings

I thought about checking in vscode settings but I sync them with github giving me the ability to let VSCode handle the setting up for me.
