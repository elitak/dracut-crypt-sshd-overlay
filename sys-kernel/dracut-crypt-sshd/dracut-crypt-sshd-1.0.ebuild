EAPI=5

DESCRIPTION="Runs sshd from initramfs to allow unlocking encrypted volumes remotely"
HOMEPAGE="https://github.com/mk-fg/dracut-crypt-sshd"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="
	${DEPEND}
	|| ( <=sys-kernel/dracut-034[net] >=sys-kernel/dracut-035 )
	net-misc/dropbear[syslog]
"


inherit 'git-2'
EGIT_REPO_URI="https://github.com/mk-fg/dracut-crypt-sshd"

src_install() {
	dodir /usr/lib/dracut/modules.d
	cp -R "${S}/60dropbear-sshd" "${D}/usr/lib/dracut/modules.d"
}
