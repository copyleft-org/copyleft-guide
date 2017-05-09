% The What and How of GPL Violations
% Bradley M. Kuhn
% Tuesday 8 May 2017

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

+ Useful if not shipping media already.

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
# More Info / Talk License

<img align="right" src="cc-by-sa-4-0_88x31.png" />


<span class="fitonslide">
<p>Presentation and slides are: Copyright &copy; Bradley M. Kuhn (2008&ndash;2011, 2015, 2017), Karen M. Sandler (2017), and are licensed under the <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/legalcode">Creative Commons Attribution-Share Alike 4.0 International License</a>. </p>
</span>
