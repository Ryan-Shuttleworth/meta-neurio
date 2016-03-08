# This recipe-append is used to customize the ntp_4.2.8
# installation process 

# by default ntp appears to only provide a self-reference/loopback
# to 127.127.1.0.  This function adds some additional time servers, 
# the high startum assignmentof 127.127.0.1 in the default config 
# should mean that these servers will be used when a network is
# present while 127.127.0.1 (self-reference) will only be used 
# when a network is not available

pkg_postinst_ntp() {
    cat <<EOF >> $D/etc/ntp.conf

server 0.pool.ntp.org iburst
server 1.pool.ntp.org iburst
server 2.pool.ntp.org iburst
server 3.pool.ntp.org iburst
EOF
}
