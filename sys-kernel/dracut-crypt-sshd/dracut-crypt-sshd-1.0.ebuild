EAPI=5

DESCRIPTION=""
HOMEPAGE="https://github.com/mk-fg/dracut-crypt-sshd"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	sys-kernel/dracut[net]
	net-misc/dropbear[syslog]
"
RDEPEND="${DEPEND}"

inherit 'git-2'
EGIT_REPO_URI="https://github.com/mk-fg/dracut-crypt-sshd"

src_install() {
	dodir /usr/lib/dracut/modules.d
	cp -R "${S}/60dropbear-sshd" "${D}/usr/lib/dracut/modules.d"
}
