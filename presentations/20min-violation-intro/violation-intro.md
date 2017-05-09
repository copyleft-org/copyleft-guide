% A Practical Guide to Compliance with the GNU GPL
% Bradley M. Kuhn and Karen M. Sandler
% Thursday  19 January 2016


# Audience

+ Our goal here is to move faster or slower based on audience knowledge.

+ There are folks in this audience who have worked with this stuff for years,
  and those who are completely new.

+ We want these presentations to be valuable to all of you.

# Audience

+ Please, don't be embarrassed:
     + Ever GPL expert in the world, including us, started as a student who
       knew none of this.

+ This is a course; raise your hand if you are confused or have a question.

+ We are glad to go "off-slides" and get your questions answered.

# The Tutorial's Textbook

+ This tutorial actually has a 125-page textbook.

+ You can download it (PDF or online HTML browse, or the source code!) from
  [copyleft.org/guide](https://copyleft.org/guide)

+ The text is in integration and culmination of every freely licensed
  material on copyleft (and GPL in particular) we could find.

+ We don't mind if you read the text while we talk and raise your hand with questions.

# How this Tutorial Go?

+ Materials presented will mix the simple &amp; complex.

+ We cannot possibly cover the entire GPL and compliance procedures in merely
  two hours.
    + a full course could take a whole day or more.
    + but we'll give you the key highlights.

# Outline

+ Discuss: motivations, origins, then a few of GPL's sections.

+ Turn to focus to how it relates to meeting the requirements of the license
  (aka compliance).

+ If you haven't asked enough questions at that point, we'll then still have
  lots of time at the end to take questions and answer them.

# Why Listen To Us?

+ Conservancy operates and practices license compliance activities extremely transparently.

+ So you have access to drafters, interpreters, enforcers.

+ Someday, we may (or already have) sit across the table from you.

+ Our transparency does make your job easier. 

# The Mindset of GPL

+ GPL protects software freedom.

+ Ultimate goal: make sure every user has the four freedoms.
     + Freedom to run the software.
     + Freedom to study and modify the software.
     + Freedom to share the software.
     + Freedom to distribute modified versions.

+ Every clause in GPL was designed to uphold one of these freedoms.
     + Or, it's a compromise of drafting in adoption vs. freedom debate.

# Using Copyright

+ GPL is primarily a copyright license.
      + Software is copyrighted.
      + License grants key freedoms.
      + Requirement prohibit activities that take away freedoms.

+ General concept: copyleft.

+ Specific implementation: GPL.

# Conditional Permissions

+ A copyleft license grants copyright permissions, conditionally.

+ Think of the phrase: &ldquo;provided that&rdquo;

+ &ldquo;provided that&rdquo;: appears (in some form) only
    + 4 times in GPLv2
    + 9 times in GPLv3.

# Compare To Proprietary Licenses

+ Yes, the GPL has its requirements.

+ But *none* of these activities are ever permitted under proprietary
  licenses.

+ If you don't like what the GPL requires you to do, then just use
  proprietary software instead.

+ That way, you know the answer to every &ldquo;Am I allowed to?&rdquo; question is &ldquo;no&rdquo;

+ rather than: &ldquo;yes, but only as long as you &hellip;&rdquo;

+ Many business advantages to copyleft...

# The Technical Gap

+ Understanding GPL well requires a some software expertise &amp; legal
  expertise.

+ You don't have to be a professional on either side to grok it.
     + but you're best off if you're a professional in one &amp; an amateur
       in the other. 

+ Most important technical concepts you need:
     + source code, binaries, methods of distribution.

# Modification As a Center Provision

+ GPL's primary copyright hook is copyright controls on the right to modify.

+ GPL's central tenant:

+ You can make a modified version of various types privately as much as you'd like.

+ When you distribute that modified version, you have requirements to meet.

+ Technological considerations dictate necessity of more complex rules for
certain types of modifications.

# GPLv2 &sect; 2(a-b)

<span class="fitonslide">
<p>[GPLv2&sect;]2. You may modify your copy or copies of the Program or any
portion of it, thus forming a work based on the Program, and copy and
distribute such modifications or work under the terms of Section 1 above,
provided that you also meet all of these conditions:
<br/>
<br/>
a) You must cause the modified files to carry prominent notices stating
that you changed the files and the date of any change.
<br/>
<br/>
b) You must cause any work that you distribute or publish, that in
whole or in part contains or is derived from the Program or any
part thereof, to be licensed as a whole at no charge to all third
parties under the terms of this License.
</p>
</span>

# GPLv3&sect;5(a-c)

<span class="fitonslide">
<p>
You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the
terms of section 4, provided that you also meet all of these conditions:
<br/>
<br/>
a) The work must carry prominent notices stating that you modified it, and
giving a relevant date.
<br/>
<br/>
b) The work must carry prominent notices stating that it is released under
this License and any conditions added under section 7.  This requirement
modifies the requirement in section 4 to "keep intact all notices".
<br/>
<br/>
c) You must license the entire work, as a whole, under this License to anyone
who comes into possession of a copy.  This License will therefore apply,
along with any applicable section 7 additional terms, to the whole of the
work, and all its parts, regardless of how they are packaged.  This License
gives no permission to license the work in any other way, but it does not
invalidate such permission if you have separately received it.
</p>
</span>

# GPLv2&sect;2&para; penultimates

<span class="fitonslide">
<p>
These requirements apply to the modified work as a whole.  If
identifiable sections of that work are not derived from the Program,
and can be reasonably considered independent and separate works in
themselves, then this License, and its terms, do not apply to those
sections when you distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a work based
on the Program, the distribution of the whole must be on the terms of
this License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of who wrote it.
<br/>
<br/>
Thus, it is not the intent of this section to claim rights or contest
your rights to work written entirely by you; rather, the intent is to
exercise the right to control the distribution of derivative or
collective works based on the Program.
</p>

</span>

# GPLv3 &sect;0 &para;1-5
<span class="fitonslide">
<p>
  "Copyright" also means copyright-like laws that apply to other kinds of
works, such as semiconductor masks.
<br/>
<br/>
  "The Program" refers to any copyrightable work licensed under this
License.  Each licensee is addressed as "you".  "Licensees" and
"recipients" may be individuals or organizations.
<br/>
<br/>
To "modify" a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of an
exact copy.  The resulting work is called a "modified version" of the
earlier work or a work "based on" the earlier work.
<br/>
<br/>
  A "covered work" means either the unmodified Program or a work based
on the Program.
</p>

# Binaries (Object Code) are Modifications

+ Software that the computer understands is different than software humans
  read.

+ There is often a process required to modify (and/or translate) the software
  from human-readable
      + This process can be done ahead of time.

+ Separation of source and binary was the first way proprietary software
  companies discovered to subjugate users.
      + GPL uses the fact that binaries are modifications (which are often
        distribution) to prevent that subjugation.

# GPLv2 &sect; 3(a-b)

<span class="fitonslide">
<p>
<p>[GPLv2&sect;]3. You may copy and distribute the Program (or a work based on it,
under Section 2) in object code or executable form under the terms of
Sections 1 and 2 above provided that you also do one of the following:
<br/>
<br/>
a) Accompany it with the complete corresponding machine-readable
source code, which must be distributed under the terms of Sections
1 and 2 above on a medium customarily used for software interchange; or,
<br/>
<br/>
b) Accompany it with a written offer, valid for at least three
years, to give any third party, for a charge no more than your
cost of physically performing source distribution, a complete
machine-readable copy of the corresponding source code, to be
distributed under the terms of Sections 1 and 2 above on a medium
customarily used for software interchange;
</p>
</span>

# GPLv3 &sect; 6(a-b)

<span class="fitonslide">
<p>
[GPLv3 &sect; ] 6. Conveying Non-Source Forms.
<br/>
<br/>
You may convey a covered work in object code form under the terms
of sections 4 and 5, provided that you also convey the
machine-readable Corresponding Source under the terms of this License,
in one of these ways:
<br/>
<br/>
a) Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by the
Corresponding Source fixed on a durable physical medium
customarily used for software interchange.
<br/>
<br/>
b) Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by a
written offer, valid for at least three years and valid for as
long as you offer spare parts or customer support for that product
model, to give anyone who possesses the object code either (1) a
copy of the Corresponding Source for all the software in the
product that is covered by this License, on a durable physical
medium customarily used for software interchange, for a price no
more than your reasonable cost of physically performing this
conveying of source, or (2) access to copy the
Corresponding Source from a network server at no charge.
</p>
</span>

# GPLv3 &sect; 1 &para; 1, 4-6

<span class="fitonslide">
<p>
The "source code" for a work means the preferred form of the work
for making modifications to it.  "Object code" means any non-source
form of a work.
<br/>
<br/>
The "Corresponding Source" for a work in object code form means all the
source code needed to generate, install, and (for an executable work) run the
object code and to modify the work, including scripts to control those
activities.  However, it does not include the work's System Libraries, or
general-purpose tools or generally available free programs which are used
unmodified in performing those activities but which are not part of the work.
For example, Corresponding Source includes interface definition files
associated with source files for the work, and the source code for shared
libraries and dynamically linked subprograms that the work is specifically
designed to require, such as by intimate data communication or control flow
between those subprograms and other parts of the work.
<br/>
<br/>
The Corresponding Source need not include anything that users
can regenerate automatically from other parts of the Corresponding
Source.
<br/>
<br/>
The Corresponding Source for a work in source code form is that
same work.
</p>
</span>

# What's a GPL Violation?

+ GPL (both v2 and v3) require:
     + The whole work licensed under GPL.
     + (which means all copyrighted material added must be under
       GPL-compatible licenses.)
     + Complete, Corresponding Source (CCS) of that work provided, under GPL.

+ The licenses terminate upon violation &hellip;
     + &hellip; thus failure to comply means lost distribution rights.
     + &hellip; enforcement uses this rights termination as leverage to
       restore compliance.

# Enforcement is Technical

+ Copyleft's policy goals related to technical acts.
     + modifying, building, and installing software is a technical process.

+ In embedded systems, this process is rarely straightforward.
     + Yet GPL requires that such be possible.

+ In enforcement, we talk about &ldquo;the CCS adequately meeting GPL's requirements&rdquo;

# Compliance-Friendly Development

+ Use revision control ...
    - ... to pull in vendor branch.
    - ... to tag releases.

+ Avoid "Build Guru" ...
    - ... by documenting build process.
    - ... and versioning it, too.

# GPL Binary Requirements

(v2 &sect; 3, v3 &sect; 6)

+ Four options:
    - Source alongside binary (v2/v3).
    - Offer for source (v2/v3).
    - Internet side-by-side distribution (v3).
    - Torrent distribution (v3).

# Source Alongside Binary

+ Simplest option

+ **Obligations end at distribution time.**

+ Physical media required.

# Offer For Source

+ Useful if not shipping CD already.

+ Lasts three years.

+ Mail fulfillment required (not in v3).

# Side-By-Side Distribution

+ Not in GPLv2, pedantically speaking.

+ Always been considered compliant for v2.

+ v3 clarifies this.

# Peer-to-Peer Distribution 

+ v2 obviously couldn't consider this.

+ v3 allows distribution of equally seeded source and binary.

# Preparing Corresponding Source

(v2 &sect; 3, v3 &sect; 1)

+ Make sure all sources are present.
     - revision system helps a lot here.

+ Build scripts
     - make sure someone skilled in art can build it.

# Termination

(v2 &sect; 4, v3 &sect; 8)

+ v2 is automatic and permanent.

+ v3 has auto-reinstatement.
    - 60 day self-correction timeout.
    - 30 day penalty-less after notice.

+ Usually, you need copyright holder to reinstate.

#  Actual Enforcement

+ [*The Principles of Community-Oriented GPL Enforcement* at sfconservancy.org/linux-compliance/principles.html](https://sfconservancy.org/linux-compliance/principles.html).

+ Send a Letter, carefully finding right person.

+ Communication is key.

+ Ask for CCS candidates.


# The "Rounds"

+ Ideally (it's only happened to me twice) the first source release is
  perfect.
     + but we don't live in an ideal world.

+ The worst I've ever experienced is 22 rounds.

+ We send detailed reports.

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

+ URLs / Social Networking / Email:
     - Pls. support Conservancy: [sfconservancy.org/supporter/](https://sfconservancy.org/supporter/)
     - If you hold copyrights in Linux, Debian, Samba, or BusyBox, you can
       join our enforcement coalition.  [Contact us!](https://sfconservancy.org/linux-compliance/about.html)
     - [*The Guide*](https://copyleft.org/guide) is available &amp; [welcomes contributions at copyleft.org](https://copyleft.org).
     - Conservancy: [sfconservancy.org](https://sfconservancy.org/) &amp; [@conservancy](https://twitter.com/conservancy/).
     - Me: [faif.us](http://faif.us) &amp; [ebb.org/bkuhn](http://ebb.org/bkuhn)
     - Slides: [ebb.org/bkuhn/talks](http://ebb.org/bkuhn/talks/ELC-2015/pristine-example.html).

<span class="fitonslide">
<p>Presentation and slides are: Copyright &copy; Bradley M. Kuhn (2008&ndash;2011, 2015, 2017), Karen M. Sandler (2017), and are licensed under the <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/legalcode">Creative Commons Attribution-Share Alike 4.0 International License</a>. </p>
</span>
