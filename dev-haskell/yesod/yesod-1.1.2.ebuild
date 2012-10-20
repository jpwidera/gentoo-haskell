# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Creation of type-safe, RESTful web applications."
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
		>=dev-haskell/blaze-builder-0.2.1.4:=[profile?]
		<dev-haskell/blaze-builder-0.4:=[profile?]
		=dev-haskell/blaze-html-0.5*:=[profile?]
		>=dev-haskell/blaze-markup-0.5.1:=[profile?]
		<dev-haskell/blaze-markup-0.6:=[profile?]
		dev-haskell/cabal:=[profile?]
		=dev-haskell/hamlet-1.1*:=[profile?]
		=dev-haskell/http-types-0.7*:=[profile?]
		=dev-haskell/monad-control-0.3*:=[profile?]
		>=dev-haskell/parsec-2.1:=[profile?]
		<dev-haskell/parsec-4:=[profile?]
		=dev-haskell/shakespeare-css-1.0*:=[profile?]
		=dev-haskell/shakespeare-js-1.0*:=[profile?]
		=dev-haskell/shakespeare-text-1.0*:=[profile?]
		=dev-haskell/system-fileio-0.3*:=[profile?]
		=dev-haskell/system-filepath-0.4*:=[profile?]
		=dev-haskell/tar-0.4*:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		>=dev-haskell/transformers-0.2.2:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		>=dev-haskell/unix-compat-0.2:=[profile?]
		<dev-haskell/unix-compat-0.5:=[profile?]
		dev-haskell/unordered-containers:=[profile?]
		=dev-haskell/wai-1.3*:=[profile?]
		=dev-haskell/wai-extra-1.3*:=[profile?]
		=dev-haskell/warp-1.3*:=[profile?]
		=dev-haskell/yaml-0.8*:=[profile?]
		=dev-haskell/yesod-auth-1.1*:=[profile?]
		=dev-haskell/yesod-core-1.1*:=[profile?]
		=dev-haskell/yesod-form-1.1*:=[profile?]
		=dev-haskell/yesod-json-1.1*:=[profile?]
		=dev-haskell/yesod-persistent-1.1*:=[profile?]
		=dev-haskell/zlib-0.5*:=[profile?]
		>=dev-lang/ghc-7.4.2:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
