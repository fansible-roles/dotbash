# when changing yubikeys it necessary to clear gpg-agent stubs
# to associate keys with the new serial key
# this function do the actions to recreate the stubs for the next key
function yubiload() {
  (sudo systemctl restart pcscd;gpg-connect-agent 'RELOADAGENT'  /bye)
}

# yubiunlock try to sign a temp file using the current YubiKey SmartCard
# when using yubikey with to ssh a server using a gpg makes pinentry-curses 
# fails to load, a workaround is force pinentry to ask a pin an after ssh to
# a server
# e.g: yubiunlock; ssh server
function yubiunlock() {
  file="$(mktemp)"
  clearsign "$file"
  rm "$file" "$file".asc
}
