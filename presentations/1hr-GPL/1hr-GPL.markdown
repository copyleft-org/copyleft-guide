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

# GPLv2&sect; 2 &para; ante-penultimate &amp; penultimate

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

