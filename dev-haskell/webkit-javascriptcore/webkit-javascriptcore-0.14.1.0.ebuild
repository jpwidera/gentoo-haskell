# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="JavaScriptCore FFI from webkitgtk"
HOMEPAGE="http://hackage.haskell.org/package/webkit-javascriptcore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	net-libs/webkit-gtk:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	dev-haskell/gtk2hs-buildtools
	virtual/pkgconfig
"
