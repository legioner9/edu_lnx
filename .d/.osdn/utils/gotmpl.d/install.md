&&&fl install and use gotmpl

wget -q -O /usr/local/bin/gotmpl \
    https://github.com/powerman/gotmpl/releases/download/v1.1.0/gotmpl-`uname -s`-`uname -m`
chmod +x /usr/local/bin/gotmpl

gotmpl <config.yaml.tmpl >config.yaml