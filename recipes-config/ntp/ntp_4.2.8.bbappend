# This recipe-append is used to customize the ntp_4.2.8
# installation process 

# by default ntp appears to only provide a self-reference/loopback
# to 127.127.1.0.  This function adds some real servers  
pkg_postinst_ntp() {
    cat <<EOF >> $D/etc/ntp.conf
server 0.pool.ntp.org iburst
server 1.pool.ntp.org iburst
server 2.pool.ntp.org iburst
server 3.pool.ntp.org iburst
EOF
}
