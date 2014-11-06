# Copyleft and GPL Tutorial Materials

This repository contains various tutorial materials regarding the suite of GNU General
Public Licenses and copyleft (as applied to software).

The primary item of interest is an omnibus book on copyleft that is built
from the comprehensive-GPL-guide.tex file.

You can build this project with the following command:

    $ make

HTML output will be in the public_html directory and a PDF file will be in  comprehensive-gpl-guide.pdf.

You may need to first install texlive, tex4ht and a few other things.  On
Debian-based systems, this command may work as root:

    # aptitude install texlive-full make tex4ht

You can also [download a prebuilt PDF file](http://ebb.org/bkuhn/articles/copyleft-book.pdf).

Note the
[canonical repository for this project is on gitorious](https://gitorious.org/gpl-compliance-tools/tutorial/source/master:). Copies
of this repository on other sites is for informational and backup purposes
only.

## Contributing

Patches to this project are welcome.  Please
[submit a merge request on Gitorious](https://gitorious.org/gpl-compliance-tools/merge_requests).
If you cannot use that, you can email patches directly to Bradley.  You can
find his email address in the commit logs.
