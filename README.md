# G2V-overlay

Gentoo overlay for Gen2VDR


### Usage

Portage allows you to add additional repositories by adding a 
config file in `/etc/portage/repos.conf`. 
Here's an example:

```ini
[G2V-overlay]
location = /var/db/repos/G2V-overlay
sync-type = git
sync-uri = git://github.com/helau/G2V-overlay.git
auto-sync = yes
```

Keyword as appropriate and use emerge like you normally would do.

### Contributing

Contributions are welcome.
Fork and create a pull request. 
