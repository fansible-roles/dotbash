# secret encrypts a file for a single or multiple recipients
# e.g: secret 0xFFFF 0xYYY file.txt
secret () {
  local args=("$@")
  local length="${#args[@]}"
  local recipients="${args[@]:0:$length-1}"
  local file="${args[-1]}"
  local output="${file}".$(date +%s).enc
  gpg --encrypt --armor --output "${output}" \
    $(for i in ${recipients}; do 
      echo "-r $i" 
      done) "${file}"
  echo "${file} -> ${output}"
}

# reveal an encrypted file generated with the secret function
reveal () {
  output=$(echo "${1}" | rev | cut -c16- | rev)
  gpg --decrypt --output "${output}" "${1}" && echo "${1} -> ${output}"
}

# clearsign receives a file as input and sign it using the default KEYID
clearsign () {
  input="${1}"
  gpg --armor --clearsign "${input}"
}


