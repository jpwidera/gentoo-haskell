# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell development library"
HOMEPAGE="https://github.com/mvoidex/hsdev"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+docs +hlint"

RDEPEND=">=dev-haskell/aeson-1.2.4.0:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.2:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/async-2.1.1.1:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.13.1.0:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/cabal-1.24.2.0:=[profile?]
	>=dev-haskell/cpphs-1.20.5:=[profile?] <dev-haskell/cpphs-1.21:=[profile?]
	>=dev-haskell/data-default-0.7.1.1:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/direct-sqlite-2.3.19:=[profile?] <dev-haskell/direct-sqlite-2.4:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/fsnotify-0.2.1:=[profile?] <dev-haskell/fsnotify-0.4:=[profile?]
	>=dev-haskell/ghc-paths-0.1.0.9:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haskell-names-0.9.1:=[profile?] <dev-haskell/haskell-names-0.10.0:=[profile?]
	>=dev-haskell/haskell-src-exts-1.19.1:=[profile?] <dev-haskell/haskell-src-exts-1.24.0:=[profile?]
	>=dev-haskell/hformat-0.1.0.1:=[profile?] <dev-haskell/hformat-0.4:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?] <dev-haskell/http-client-0.7:=[profile?]
	>=dev-haskell/lens-4.14:=[profile?] <dev-haskell/lens-4.20:=[profile?]
	>=dev-haskell/lifted-base-0.2.3.10:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/mmorph-1.0.9:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/monad-control-1.0.1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/monad-loops-0.4.3:=[profile?] <dev-haskell/monad-loops-0.5:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.8:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.12.1.0:=[profile?] <dev-haskell/optparse-applicative-0.16:=[profile?]
	>=dev-haskell/regex-pcre-builtin-0.94.4:=[profile?] <dev-haskell/regex-pcre-builtin-0.96:=[profile?]
	>=dev-haskell/scientific-0.3.4.9:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/simple-log-0.9.9:=[profile?] <dev-haskell/simple-log-0.10:=[profile?]
	>=dev-haskell/sqlite-simple-0.4.13.0:=[profile?] <dev-haskell/sqlite-simple-0.5:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/syb-0.6:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/text-1.2.2.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-region-0.1.0.1:=[profile?] <dev-haskell/text-region-0.4:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/uniplate-1.6.12:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11.0.0:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.0.2:=[profile?] <dev-lang/ghc-8.10.0:=[profile?]
	docs? ( >=dev-haskell/haddock-api-2.23:=[profile?]
		>=dev-haskell/haddock-library-1.4.3:=[profile?] <dev-haskell/haddock-library-1.10:=[profile?]
		>=dev-util/hdocs-0.5.3:=[profile?] )
	hlint? ( >=dev-haskell/ghc-lib-parser-8.10:=[profile?] <dev-haskell/ghc-lib-parser-8.11:=[profile?]
			>=dev-haskell/hlint-3.0.0:=[profile?] <dev-haskell/hlint-3.3.0:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
	test? ( >=dev-haskell/hspec-2.2.4
		>=dev-haskell/lens-aeson-1.0 <dev-haskell/lens-aeson-1.2 )
"

src_prepare(){
	default

	cabal_chdep 'Cabal >= 3.0 && < 3.1' 'Cabal >= 3.0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag docs docs) \
		$(cabal_flag hlint hlint)
}
