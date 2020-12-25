# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Access to the GitHub API, v3"
HOMEPAGE="https://github.com/phadej/github"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="openssl"

RDEPEND=">=dev-haskell/aeson-1.4.0.0:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/base-compat-0.11.1:=[profile?] <dev-haskell/base-compat-0.12:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.6:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
	>=dev-haskell/binary-instances-1:=[profile?] <dev-haskell/binary-instances-1.1:=[profile?]
	>=dev-haskell/cryptohash-sha1-0.11.100.1:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
	>=dev-haskell/deepseq-generics-0.2.0.0:=[profile?] <dev-haskell/deepseq-generics-0.3:=[profile?]
	>=dev-haskell/exceptions-0.10.2:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/http-client-0.5.12:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-link-header-1.0.3.1:=[profile?] <dev-haskell/http-link-header-1.1:=[profile?]
	>=dev-haskell/http-types-0.12.3:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/iso8601-time-0.1.5:=[profile?] <dev-haskell/iso8601-time-0.2:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/tagged-0.8.5:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-compat-1.9.2.2:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/transformers-compat-0.6.5:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/vector-instances-3.4:=[profile?] <dev-haskell/vector-instances-3.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	>=dev-haskell/mtl-2.1.3.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	openssl? ( >=dev-haskell/hsopenssl-0.11.4.16:=[profile?] <dev-haskell/hsopenssl-0.12:=[profile?]
			>=dev-haskell/hsopenssl-x509-system-0.1.0.3:=[profile?] <dev-haskell/hsopenssl-x509-system-0.2:=[profile?]
			>=dev-haskell/http-client-openssl-0.2.2.0:=[profile?] <dev-haskell/http-client-openssl-0.4:=[profile?] )
	!openssl? ( >=dev-haskell/http-client-tls-0.3.5.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
			>=dev-haskell/tls-1.4.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/file-embed
		>=dev-haskell/hspec-2.6.1 <dev-haskell/hspec-2.8 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag openssl openssl)
}
