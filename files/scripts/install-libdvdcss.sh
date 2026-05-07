#!/usr/bin/env bash
set -euo pipefail

# https://blue-build.org/reference/modules/script/

# set -euo pipefail -> makes the image build fail if the script fails

# ${OS_VERSION} = 44
# ${OS_ARCH} = x86_64


package_name=`curl -s "https://download1.rpmfusion.org/free/fedora/tainted/${OS_VERSION}/${OS_ARCH}/l/" | grep -oE "libdvdcss.*?rpm" | grep -v "devel" | cut -d ">" -f 2`
package_url="https://download1.rpmfusion.org/free/fedora/tainted/${OS_VERSION}/${OS_ARCH}/l/${package_name}"

rpm-ostree install "${package_url}"
