% Brief Introduction to the GNU General Public License
% Bradley M. Kuhn
% Monday 24 March 2014


# Audience Polls

+ My goal here is to move faster or slower based on audience knowledge.

+ There are folks in this audience who have worked with this stuff for years,
  and those who are completely new.

+ We want these presentations to be valuable to all of you.

+ Please, don't be embarrassed:
     + Ever GPL expert in the world, including me, started as a student who
       knew none of this.

# IANAL

<cite>IANAL</cite>

# My Affiliations

+ Formerly had John's job, Executive Director of FSF, years ago.

+ Currently: on Board of Directors of FSF.

+ President of Software Freedom Conservancy.

# How These Orgs Relate to GPL?

+ FSF
    + Invented copyleft.
    + Authors &amp; stewards of the GPL.
    + Holder of copyrights on many key GNU programs &hellip;
    + &hellip; and therefore enforcers of those copyrights.

+ Software Freedom Conservancy
    + Adviser on legal issues of copyright, etc. to Free Software projects.
    + Holder of some copyrights on its member projects.
    + Enforcer of GPL on behalf of many copyright holders in:
    + BusyBox, Samba, Mercurial, and the kernel named Linux.

# How this Hour Will Go?

+ Materials presented will mix the simple &amp; complex.

+ We cannot possibly cover the entire GPL in one hour.

+ Discuss: motivations, origins, then a few of GPL's sections.

+ I understand the mix of backgrounds in the audience.

# A Restaurant's Lawyer?

+ Considering why you want to learn this.

+ What if your client was a restaurant?

+ What would you want to need to know?

# Restaurant Lawyer: What'd You Study?

+ If you were a restaurant's lawyer:

+ Probably three areas of law you'd focus on:
     + building codes.
     + health and safety regulations.
     + tax regulations.

+ Who would want to hear from?

# Restaurant Lawyer: What'd You Study?

+ Figure out the motivations behind the building code:
      + What parts are arcane and less important to inspectors?
      + How do inspections work?
      + What are the penalties?

+ Figure out the same for health &amp; safety:
      + Who inspects, and when?
      + What's the health code say, and what checklist do inspectors use?

+ Likely Questions:
      + Who's in charge of all this?
      + What's purpose and intent of these regulations?
      + Can I meet the inspectors?
      
# Why Listen To Us?

+ FSF: Understanding the purpose and intent of the GPL.
    
+ Conservancy &amp; FSF:
    + both enforce the GPL.
    + if your client violates, you will hear from one of us.

+ Such access to drafters, interpreters, enforcers is highly unique.

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

<hr/>

<span class="fitonslide">

> Copyright protection subsists &hellip; original works of authorship fixed in any tangible medium of expression &hellip;  from which they can be perceived, reproduced, or otherwise communicated, either directly or with the aid of a machine or device.

<p align=right>
 &mdash; <a href="http://www.law.cornell.edu/uscode/text/17/102">17 USC &sect;102</a>
</p>
</span>

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

+ If you don't like what the GPL requires you to do, then just tell your
  client to use the proprietary software instead.

+ That way, they know the answer to every question is &ldquo;no&;rdquo,

+ rather than: &ldquo;yes, but only as long as you &hellip;&rdquo;

# The Technical Gap

+ Understanding GPL well requires a some software expertise &amp; legal
  expertise.

+ You don't have to be a professional on either side to grok it.
     + but you're best off if you're a professional in one &amp; an amateur
       in the other. 

+ Most important technical concepts you need:
     + source code, binaries, methods of distribution.

# Considering Sections of the GPL

+ With the remaining time &hellip;
     + in interest of the experts in the audience &hellip;
     + let's dig into a few specific sections.

+ GPL &hearts; 17 USC&sect;106(2) &amp; 17 USC&sect;106(3)

+ Modification and distribution.

# Why Permission to Modify?

+ Your new copyrights are your copyrights:
     + you are affixing it in a tangible medium.

+ Exclusive right of copyright holders:
     + Control on &ldquo;preparation of derivative works&rdquo;
     + Distribution of the work.
     + Note the combination of these.
     
+ Again, see 17 USC&sect;106

+ N.B.: &ldquo;derivative works&rdquo; is USA-centric, modify is more international)

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

# GPLv2&sect;2&para; ante-penultimate &amp; penultimate

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

# Binaries (i.e., Object Code) are Modifications

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
