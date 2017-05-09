% Examples of CCS Reports
% Bradley M. Kuhn &amp; Karen M. Sandler
% Tuesday 9 May 2017

# CCS "Round" Reports

+ Evaluate each CCS candidate.

+ Someone "skilled in the art" attempts to build.

+ Detailed notes are sent, asking for new CCS candidate "round".

+ Some anonyomized real world examples.

# No Build Instructions

<hr/>
    The primary issues we found were a dearth of build instructions as well 
    as a complete lack of installation instructions.  There was no 
    information that mentioned how one might build each package so we had to 
    guess about which Makefile and/or build script to run for each package.
    And in many cases it was not possible or straight-forward to build - this
    must be resolved in the next source candidate.

# Making General Recommendations

<hr/>
    We generally recommend that the source release be a single file (ie. one
    tarball containing all packages required for the build) that includes a
    README or similar in the main directory explaining exactly how to build
    and install all of the packages.  See section 21.2 of
    http://compliance.guide/pristine-example for an excellent example.

# Suspicious, But Not Captious.

<hr/>
    Also, we noticed that some packages mentioned in the "OPEN SOURCE
    SOFTWARE NOTICE" included with the device (and also downloaded as part of
    the source release; see
    Open_Source_Software_Notice_and_Privacy_Policy.pdf ) could not be found
    in the source release.  For example, we found "Software: Samba 3.0.XX" in
    the notice, but could not find any trace of Samba in the source release.
    Please ensure that all the software included in the notice is included in
    the source release as well.

# Nesting Doll Packages

<hr/>

    Once extracted, the 3 .rar files above produce the following output 
    files:
         * busybox-1.21.1.rar
         * AB_A0101.123.tar.gz
         * source.rar
         * a small text file that gives two-word descriptions of the above files


# Actual(ly Trying to) Build

<hr/>

    This file included no instructions for how one might build it so we 
    tried to run "make" but received the following error:

    $ make
    .../busybox-1.21.1/scripts/gcc-version.sh: line 11: 
    arm-none-linux-gnueabi-gcc: command not found

# Toolchain?

+ The toolchain is rarely considered mandatory as part of &ldquo;the
  scripts&rdquo;.

+ Admittedly, it doesn't *control* compilation, it *is* compilation.

+ The script here is explaining precisely what type of toolchain is needed.

+ Something like: &ldquo;GCC vX built with the following ./configure
  line&rdquo; is usually adequate.

+ But including the toolchain is a nice step to make it easy for your users.

<hr>
> the scripts used to **control compilation** and installation of the executable.

<p align=right>
&mdash; GPLv2&sect;3
</p>
</span>

# We Guess at Compiler Anyway

<hr/>
    So we searched for an arm-none-linux-gnueabi- cross-compiler in the 
    other files but could not find one.  We then tried to use our own (be 
    editing the PATH appropriately), which did get us past this error.  Note 
    that this is not acceptable in a source release - the cross-compiler 
    that a user must use needs to be clearly indicated (name, version, etc.) 
    and/or included with the source release.

# Feedback on Small Problems

<hr/>

     Once we had the custom cross-compiler configured, we then ran into these 
     errors:
     
     $ make
     .../busybox-1.21.1/scripts/gen_build_files.sh: Permission denied
     make: *** [gen_build_files] Error 127
     
     $ make
     .../busybox-1.21.1/scripts/mkconfigs: Permission denied
     make: *** [include/config/MARKER] Error 126
     
     $ make
     /bin/sh: applets/usage_compressed: Permission denied
     make[1]: *** [include/usage_compressed.h] Error 126
     make: *** [applets_dir] Error 2
     
     $ make
     .../busybox-1.21.1/scripts/trylink: Permission denied
     make: *** [busybox_unstripped] Error 126
     
     In each case, we found the mentioned file and then added executable 
     permissions to it (ie. "chmod u+x scripts/gen_build_files.sh").  This 
     must be fixed in the next source release - please set the executable 
     bits on the above files appropriately in the archive file you 
     distribute.

# Install Instructions missing

<hr/>
     After fixing the above, a "busybox" binary was generated.  However, 
     there were no instructions to indicate how one might install this binary 
     on the device.  Such instructions are required by GPLv2, under which 
     BusyBox is licensed.  Please include the instructions in your next 
     source release.

# Build "Only Seems" To build

<hr/>
     For the AAB_A0101.123.tar.gz package, we ran "./build.sh", the build
     took about 140 seconds, which is less than one would expect for building
     all of the programs listed in the "OPEN SOURCE SOFTWARE NOTICE".  The
     only files we could immediately find that were clearly the result of
     this "./build.sh" invocation were some kernel image binaries, found in
     path/path/path/path/path/KERNEL_OBJ .  This path was not mentioned at
     all and we had to guess at where they might be.

# Maybe Proprietary Kernel Modules?

<hr/>
     Furthermore, there were no .ko files generated, which is abnormal for a
     build of the kernel, Linux.  Please ensure that all .ko files which are
     used on the system are generated with "./build.sh" or a similar script.

# Weird versioning

<hr/>

     * The following libraries have different versions in the firmware than
        is built from the candidate CCS.  Specifically, your candidate CCS
        contains version "1800", and the firmware has version "2400".  Since
        most of these libraries are licensed under the LGPL, you are required
        to have the complete, corresponding source present for the correct
        version as distributed in the firmware.  You also must include the
        "scripts to control compilation and installation of the executable".
     
           * lib/libgio-2.0.so.0.2400.2
           * lib/libglib-2.0.so.0.2400.2
           * lib/libgmodule-2.0.so.0.2400.2
           * lib/libgobject-2.0.so.0.2400.2
           * lib/libgthread-2.0.so.0.2400.2
           * lib/libz.so.1.2.5  (version 1.2.2 is provided in the sources)
      
# Weird Build Issues Over Many Candidates

<hr/>
    You mentioned in your Round 6 commentary that you have corrected the
    thatlib issues.  However, we are unable to see what you mean.  There are
    now two copies of thatlib, one in 2624.7_524/uclinux-rootfs/lib/thatlib/,
    as well as the one in yourlibs.  We aren't sure which one you intend to
    be built to generate the binaries on the firmware.  When we try to build
    the yourlibs one from scratch, by cleaning the whole area, we get the
    following build issues.  Here's what we did:

# Getting Really build-technical

<hr/>

    We ran:

      make -C libsrc/thatlib install

    which did not work because of a missing Makefile error. We read the
    build source and discovered that the Makefile, etc, for that directory
    is generated by running:

       cd libsrc/thatlib/thatlib-0.9.22_mipsel-uclibc; sh configure_thatlib_mipsel-uclibc

    Once we did that

       make -C libsrc/thatlib install

     worked correctly. The only remaining binaries were in build source and
     discovered that the Makefile, etc, for that directory is generated by
     running:

       cd libsrc/thatlib/thatlib-0.9.22_mipsel-uclibc; sh configure_thatlib_mipsel-uclibc

# Getting Really build-technical

<hr/>

    Once we did that

       make -C libsrc/thatlib install

     worked correctly. The only remaining binaries were in
     ./libsrc/thatlib/\{YOURLIB_ROOT_DIR\}/ which looks like a build with a
     misconfigured environment somehow, so we simply removed that
     directory.

     Then, after running make clean, thatlib failed with the following
     errors. Random .o/.so files laying around in the thatlib source
     directory, and then it failing to build correctly after they are
     removed.  If there some set of .so files you claim are not required
     as part of the C&CS since thatlib is LGPL'd, we understand that, but
     the rest of the sources must build and install those other .so's.
     Here's the build error we get in the bdvdlibs version:

# Getting Really build-technical

<hr/>

     mkdir .libs/libthatlibwm_default.a.tmp
     (cd .libs/libthatlibwm_default.a.tmp && ar x ../../.libs/libthatlibwm_default.a)
     mkdir .libs/libthatlibwm_default.a.tmp
     (cd .libs/libthatlibwm_default.a.tmp && ar x ../../.libs/libthatlibwm_default.a)
     /opt/toolchains/crosstools_sf-linux-2.6.18.0_gcc-4.2-9ts_uclibc-nptl-0.9.29-20070423_20080702/bin//mipsel-uclibc-
       ld -o libthatlibwm_default.o -r .libs/libthatlibwm_default.a.tmp/*.o
     /opt/toolchains/crosstools_sf-linux-2.6.18.0_gcc-4.2-9ts_uclibc-nptl-0.9.29-20070423_20080702/bin//mipsel-uclibc-
       ld: .libs/libthatlibwm_default.a.tmp/default.o: Relocations in generic ELF (EM: 3)
     /opt/toolchains/crosstools_sf-linux-2.6.18.0_gcc-4.2-9ts_uclibc-nptl-0.9.29-20070423_20080702/bin//mipsel-uclibc-
       ld: .libs/libthatlibwm_default.a.tmp/default.o: Relocations in generic ELF (EM: 3)
     /opt/toolchains/crosstools_sf-linux-2.6.18.0_gcc-4.2-9ts_uclibc-nptl-0.9.29-20070423_20080702/bin//mipsel-uclibc-
       ld: .libs/libthatlibwm_default.a.tmp/default.o: Relocations in generic ELF (EM: 3)
     /opt/toolchains/crosstools_sf-linux-2.6.18.0_gcc-4.2-9ts_uclibc-nptl-0.9.29-20070423_20080702/bin//mipsel-uclibc-
       ld: .libs/libthatlibwm_default.a.tmp/default.o: Relocations in generic ELF (EM: 3)
     .libs/libthatlibwm_default.a.tmp/default.o: could not read symbols: File in wrong format
     make[4]: *** [libthatlibwm_default.o] Error 1

# Proprietary Linux Modules Are Everywhere 

<hr/>
     We did find one .ko file that was already included in the package, but
     wasn't built when we ran "./build.sh".  This is
     path/path/android_X.X/device/device-type/mydevice.ko , which notes that
     its license is "GPL v2" in the modinfo, but for which we could find no
     source code in the source release.  Please ensure that the source code
     for mydevice.ko is included in the next source candidate.

# Proprietary Linux Modules Are Everywhere 

<hr/>

     * The following files are derivative of the kernel named Linux and
        therefore covered by the GPL.  However, no source code, scripts to
        control compilation nor installation are included in your CCS
        candidate:
              lib/modules/myfilesystem.ko
              lib/modules/mydevicecontroller.ko
              lib/modules/myblockdevice.ko
              lib/modules/mypcicard.ko

# Non-Technical GPL Compliance Issues

<hr/>
    Regarding over the air updates: we'd like to see a screenshot or other
      details documenting what has now been implemented by BestBuy to make
      sure the offer for source appears to users appropriately after
      upgrade.  There was a consensus reached on the last conference call
      how this would be done, so we only need follow up and implementation
      on that.


# Binary Comparison.

<hr/>

     Note that we did not receive a firmware image to compare this with 
    (though we do have the device).  Company's website did not appear to 
    have any firmware images available for download.  It would be helpful to 
    have such an image for the next CCS check.

    The above source candidate was downloaded from 
    http:///sourcez.company.com/en/search/index.htm?keywords=X1234Y, which 
    was alluded to in Company's 2017-01-18 email to us that said:

    "You can check this website 
    http://sourcez.company.com/en/search/index.htm "

    The email did not mention how to use that website, but we found that by 
    entering "X1234Y" into the top right search box that we could find the 
    source file list.

    Note that the offer for source included in the web UI of the device said 
    to email NAME@COMPANY.com , which is how the above instructions for 
    downloading the source were received.

# More Info / Talk License

<img align="right" src="cc-by-sa-4-0_88x31.png" />

+ Specific Sections of Copyleft Guide relating to these topics:
      - [The Pristine Example](https://copyleft.org/guide/comprehensive-gpl-guidech22.html#x29-15900021)
      - [Details of a Compliant Distribution](https://copyleft.org/guide/comprehensive-gpl-guidech16.html#x21-12700015)

<span class="fitonslide">
<p>Presentation and slides are: Copyright &copy; Bradley M. Kuhn (2008&ndash;2011, 2015, 2017), Karen M. Sandler (2017), and are licensed under the <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/legalcode">Creative Commons Attribution-Share Alike 4.0 International License</a>. </p>
</span>
