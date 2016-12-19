# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="media plugin for clckwrks"
HOMEPAGE="http://clckwrks.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/acid-state-0.12:=[profile?] <dev-haskell/acid-state-0.15:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/clckwrks-0.21:=[profile?] <dev-haskell/clckwrks-0.25:=[profile?]
	>=dev-haskell/gd-3000:=[profile?] <dev-haskell/gd-3001:=[profile?]
	>=dev-haskell/happstack-server-7.0:=[profile?] <dev-haskell/happstack-server-7.5:=[profile?]
	>=dev-haskell/hsp-0.9:=[profile?] <dev-haskell/hsp-0.11:=[profile?]
	>=dev-haskell/ixset-1.0:=[profile?] <dev-haskell/ixset-1.1:=[profile?]
	>=dev-haskell/magic-1.0:=[profile?] <dev-haskell/magic-1.2:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/reform-0.2:=[profile?] <dev-haskell/reform-0.3:=[profile?]
	>=dev-haskell/reform-happstack-0.2:=[profile?] <dev-haskell/reform-happstack-0.3:=[profile?]
	>=dev-haskell/reform-hsp-0.2:=[profile?] <dev-haskell/reform-hsp-0.3:=[profile?]
	>=dev-haskell/safecopy-0.6:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/web-plugins-0.1:=[profile?] <dev-haskell/web-plugins-0.3:=[profile?]
	>=dev-haskell/web-routes-0.27:=[profile?] <dev-haskell/web-routes-0.28:=[profile?]
	>=dev-haskell/web-routes-th-0.21:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
	dev-haskell/hsx2hs:=
"
