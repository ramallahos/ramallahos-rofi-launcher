# Maintainer: Safwan Nayeem Yousuf <safwannayeemyousuf.com>
pkgname=ramallahos-rofi-launcher
pkgver=1
pkgrel=1
pkgdesc="Applauncher using rofi for RamallahOS"
arch=('any')
url="https://github.com/ramallahos/$pkgname"
license=('GPL')
depends=('rofi')
makedepends=('coreutils')
source=("$pkgname::git+$url.git")
sha256sums=('SKIP')

package() {
    cd "$pkgname"
    install -d "$pkgdir/usr/bin/$pkgname-resources/"
    install -Dm777 "$pkgname" "$pkgdir/usr/bin/$pkgname"
    cp -f *.rasi "$pkgdir/usr/bin/$pkgname-resources/"
    cp -f *.png "$pkgdir/usr/bin/$pkgname-resources/"
    cp -f *.jpeg "$pkgdir/usr/bin/$pkgname-resources/"
    chmod +777 *.* "$pkgdir/usr/bin/$pkgname-resources/"
}
