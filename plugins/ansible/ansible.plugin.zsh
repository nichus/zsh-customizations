if [ -d "/opt/ansible" ]; then
  ANSIBLE="/opt/ansible"

  export ANSIBLE_NOCOWS=1
  source $ANSIBLE/hacking/env-setup >/dev/null 2>&1
fi
