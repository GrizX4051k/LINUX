# 02 – Filesystem & Permissions

Topics: filesystem hierarchy, rwx permissions, `chmod`, `chown`, hard vs soft links.

Goal: understand where things live on a Linux system and how access control works.

# Notes – Filesystem & Permissions

Filesystem hierarchy (examples):
- `/` – root
- `/home` – user home directories
- `/etc` – configuration
- `/var` – logs, variable data
- `/usr` – system programs and libraries

Permissions:
- `ls -l` shows `-rwxr-xr-- user group ... file`
- `r` = read, `w` = write, `x` = execute
- First 3 = user, next 3 = group, last 3 = others

`chmod`:
- symbolic: `chmod +x script.sh`
- numeric: `chmod 644 file` (`6 = rw-`, `4 = r--`)

`chown`:
- `sudo chown user:group file`

Links:
- Hard link: `ln a.txt a-hard.txt`
- Soft link (symlink): `ln -s a.txt a-soft.txt`
