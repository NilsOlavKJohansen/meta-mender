do_install_append_mender-testing-enabled() {
    # Enable /etc/issue to be changed from R/O rootfs.
    mkdir -p ${D}/data${sysconfdir}
    mv ${D}${sysconfdir}/issue ${D}/data${sysconfdir}/issue
    ln -s /data${sysconfdir}/issue ${D}${sysconfdir}/issue
}
