# Maintainer: mut-ex
pkgname=mut-ex-wallpapers
pkgver=5.0.r589.8c0f76a
pkgrel=1
epoch=
pkgdesc="Public collection of wallpapers."
arch=(x86_64)
url="https://github.com/mut-ex/wallpapers.git"
license=('GNU')
groups=()
depends=(feh)
makedepends=(git)
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
    cd "${_pkgname}"
    printf "5.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd wallpapers
    mkdir -p ${pkgdir}/usr/share/backgrounds/${pkgname}
    cp -rf wallpapers/* ${pkgdir}/usr/share/backgrounds/${pkgname}
}
