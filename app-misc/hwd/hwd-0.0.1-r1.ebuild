# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit cmake

DESCRIPTION="My first ebuild file"
HOMEPAGE="https://github.com/cvuuhk/hwd/tree/v0.0.1"
SRC_URI="https://github.com/cvuuhk/hwd/archive/refs/tags/v0.0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

IUSE="goodbye"

src_configure() {
	local mycmakeargs=(
	-DUSE_GOODBYE=$(usex goodbye)
	)

	cmake_src_configure
}
