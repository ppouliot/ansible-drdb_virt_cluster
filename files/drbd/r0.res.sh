#!/usr/bin/env bash
cat << EOF > /etc/drbd.d/r0.res
resource r0 {
  device /dev/drbd0;
  disk /dev/sdb1;
  meta-disk internal;
  on virt-cl-drbd-0 {
     address 192.168.1.1:7780;
  }
  on virt-cl-drbd-1 {
     address 192.168.1.2:7780;
  }
}
EOF
