# Arch installation script

My ansible script installing Archlinux.

### Vars

Use `hosts-template.yml` to configure installation.

### Tags

Some part of the playbook can be ommited by using the `--skip-tags` option.
e.g. for graphical vm:
```shell
ansible-playbook -i hosts main.yml --skip-tags bluetooth,audio,wifi
```

- `gui`: For workstations, including X, i3, greeters and a bunch of softwares
- `ssh`: Make computer accessible via ssh on local network from the current machine
- `audio`
- `blueetooth`
- `wifi`

### TODO
- Replace Vundle
