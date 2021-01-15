# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7

#CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
GHC_BOOTSTRAP_FLAGS="-rtsopts -dcore-lint -debug -O" # dcore-lint\""
CABAL_EXTRA_CONFIGURE_FLAGS="+RTS -A512M -qb0 -RTS --flags=\"debug\""
inherit haskell-cabal

DESCRIPTION="An embedded language for accelerated array processing"
HOMEPAGE="https://github.com/AccelerateHS/accelerate/"
#SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"
#EGIT_REPO_URI="https://github.com/${PN}/${PN}.git" 
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bounds-checks debug ekg internal-checks nofib unsafe-checks"

RDEPEND=">=dev-haskell/ansi-terminal-0.6.2:=[profile?]
	>=dev-haskell/base-orphans-0.3:=[profile?]
	>=dev-haskell/cryptonite-0.21:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?]
	>=dev-haskell/half-0.3:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?]
	>=dev-haskell/hashtables-1.2.3:=[profile?]
	>=dev-haskell/hedgehog-0.5:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	>=dev-haskell/prettyprinter-1.2:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.0:=[profile?]
	>=dev-haskell/primitive-0.6.4:=[profile?]
	>=dev-haskell/tasty-0.11:=[profile?]
	>=dev-haskell/terminal-size-0.3:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/unique:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-8.6.3:=
	ekg? ( >=dev-haskell/async-2.0:=[profile?]
		>=dev-haskell/ekg-0.1:=[profile?]
		>=dev-haskell/ekg-core-0.1:=[profile?] )
	nofib? ( >=dev-haskell/tasty-expected-failure-0.11:=[profile?]
			>=dev-haskell/tasty-hedgehog-0.1:=[profile?]
			>=dev-haskell/tasty-hunit-0.9:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	>=dev-haskell/cabal-doctest-1.0
	test? ( >=dev-haskell/doctest-0.11 )
"


src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bounds-checks bounds-checks) \
		$(cabal_flag debug debug) \
		$(cabal_flag ekg ekg) \
		$(cabal_flag internal-checks internal-checks) \
		$(cabal_flag nofib nofib) \
		$(cabal_flag unsafe-checks unsafe-checks)
}
