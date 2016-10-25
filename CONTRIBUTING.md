# Contributions Welcome!

The maintainers of this Copyleft Guide project encourage contribution from
the community.  Part of the impetus for this project was to create a
community around a "copyleft codebase" for information about copyleft.  In
other words, this project is a tutorial project about Copyleft that is like a
Free Software project.

## Who Is In Charge?

Currently, [Bradley M. Kuhn](http://ebb.org/bkuhn/) is the editor-in-chief of
this Guide project.  Bradley shares commit access with Ben Cotton, Donald
Roberston, and Engel Nyst.

Also, many other contributors have given patches and improvements to the
text.  Review the
[commit log in the Git repository](https://k.copyleft.org/guide/changelog)
for more details on who has contributed to the project.

## How Do I Get Involved?

The Guide is maintained in a copylefted distributed version control system called
[Git](http://git-scm.com/).  Currently, the project collaboration site is an
instance of the [Kallithea code hosting software](https://kallithea-scm.org/)
hosted at [k.copyleft.org](https://k.copyleft.org/guide/).  (Kallithea itself
us under a copyleft license, too, namely GPLv3.)

Those who are comfortable with using Kallithea can submit
[pull requests via the Kallithea interface](https://k.copyleft.org/guide/pull-request).
See the section "Merge Request and Patch Workflow" below for more information
on the details of doing that.

However, lack of Git and/or LaTeX knowledge is *not a barrier* for
contribution to this project.  Useful contributions will be accepted by the
following means as well:

  * Patches posted to
    [the mailing list](http://lists.copyleft.org/cgi-bin/mailman/listinfo/discuss).

  * New sections of text or simply ideas and input emailed to
    [the mailing list](http://lists.copyleft.org/cgi-bin/mailman/listinfo/discuss).

  * Ideas and suggestions mentioned on the
    [irc channel #copyleft on freenode](irc://irc.freenode.net/#copyleft).

Please, do not worry if your patches or new sections of text are not properly
formatted as patches and/or are not formatted in LaTeX properly.  Indeed,
feel free to offer patches that break LaTeX formatting, or to just write up
your suggestion in an email.  If the content is appropriate for the Guide,
the editor-in-chief or someone else will format your contribution properly
for LaTeX.

Note: by submitting contributions via any of these means, you agree to the
"Author's Certificate of Origin" (see below).

## How Do I Figure Out What To Contribute?

If you're looking for something to fix, just grep the *.tex files for "FIXME"
and you'll find plenty.  Many of them are simple and easy to do.  Some of
them are writing, and some of them are simply formatting-related.

If you want a larger, more involved writing project, take a look at the
[TODO list in this repository](TODO.md).  That list has bigger items that
other contributors have identified as necessary.  (BTW, the project
contributors are considering various possible copylefted bug-tracking
solutions, but admittedly haven't picked a bug-tracker yet.)

There is also a [TODO list on the website](https://copyleft.org/todo/), which
are mostly related to formatting, layout and infrastructure, but if you'd
like to help there, such help is also welcome.

## Contributing Third-Party CC-BY-SA'd Works

As can be seen in
[the LaTeX source file, third-party-citations.tex](third-party-citations.tex),
some material from third-party works has occasionally been merged into this
guide.  We're always on the hunt for useful CC-BY-SA'd materials that would
work well with this guide.

Do offer merge requests and/or patches that incorporate useful third-party
works, provided  that is clearly licensed under CC-BY-SA.  Follow these
procedures when doing so:

0. Target all changes for the 'next' branch (see below).  Likely, use of a
   secondary branch will be useful for the following steps (perhaps use the
   procedure below entitled "Contributing via Gitorious" to do so).

1. If possible, follow this procedure for the first commit that begins the
   work of integrating the third party text.

   Initially, just "paste in" any useful text from the other work into the
   appropriate .tex file.  Try to keep it as similar to the upstream sourced
   text as possible.  Surround the text with '% FIXME: ' as needed to remind
   that editing is needed to integrate the text into document.  Then, commit
   this just as a stand-alone commit without any attempt to integrate the
   text.

   While not strictly necessary, it's ideal to set the "Author" field and
   "Author-Date" fields of this first commit to match the original author of
   the work, rather than your own.  You can do this with a command like this:

        $ date="2014-05-31 13:15:01 -0400"; env GIT_AUTHOR_DATE="$date" GIT_AUTHOR_NAME="Original Author Name" GIT_AUTHOR_EMAIL="originalauthor@example.org" git commit -a

   Write a commit message that specifically identifies the original author,
   the original title of the published work.  Include specific details
   stating the reasons why you believe the work is licensed under CC-BY-SA.
   If the original published work has a canonical hyperlink for the work,
   include that as well in the commit message.

   Finally, include any comments or reasoning why the text is appropriate for
   the Guide (and/or, why some text from the original material is not
   included because those parts aren't appropriate for the Guide).

   This procedure creates a "commit point" that shows the specific text
   brought from the other source &mdash; more-or-less as it stood in the
   other work.  This is useful for historical archiving purposes.

   [Commit 678e841079aa708f98fe948ec8cef672d9a4c3cc](https://k.copyleft.org/guide/changeset/678e841079aa708f98fe948ec8cef672d9a4c3cc)
   contains an example of this specific procedure.

2. In a second commit, by itself, add the following two things only:

      * Update the copyright notices found in
        [comprehensive-gpl-guide.tex](comprehensive-gpl-guide.tex).  Ensure
        that the LaTeX formatting is correct.

      * Add an entry in
        [third-party-citations.tex](third-party-citations.tex) with a link to
        the work.  Mimic the formatting of existing '\item' entries on the
        list already in that file.

3. Next, through a series of small commits, carefully integrate the text into
   the larger whole.  Think carefully about how the new text will appear to
   readers.  Rework phrases as necessary to match the style of the existing
   text of the Guide; pay particular attention to the style in the paragraphs
   immediately surrounding your pastes to ensure the text reads a unified
   whole.  Commit changes as necessary, in the smallest increments reasonably
   possible.

4. Carefully vet the text for locations where the positions contradict or
   otherwise aren't fully congruent with the existing material in the Guide.
   Ideally, all copyleft advocates would agree on all points, but they don't.
   Therefore, the Guide should note the major differences in opinion in the
   actual text, and include footnotes for any notable minority opinions.
   Commit changes as necessary, in the smallest increments reasonably
   possible.

   [Commit 07a02b0b1c6d3ac2af9ed21b2a563abcf44d3d0f](https://k.copyleft.org/guide/changeset/07a02b0b1c6d3ac2af9ed21b2a563abcf44d3d0f)
   is an example of the process for the last two steps.

5. Submit a merge request for your branch into 'next'.  In this particular
   situation, it's particularly helpful to make a formal merge request on
   Gitorious rather than emailing a patch set.

## Merge Request and Patch Workflow

Currently, the main location for work on this project is
[on k.copyleft.org](https://k.copyleft.org/guide), and active new
development on the project happens on the
['next' branch](https://k.copyleft.org/guide/changelog?branch=next)
(which is
[auto-published on the copyleft.org/guide-next URL](https://copyleft.org/guide-next/)).
Here is a suggested workflow for submitting patches &mdash; first doing so
*with* the Gitorious infrastructure, second *avoiding* the Gitorious
infrastructure but still using Git, and third avoiding Git altogether.

Merge requests and/or patches against
['next' branch](https://k.copyleft.org/guide/changelog?branch=next) are
typically much preferred, and the workflow explanations below assume that.
However, merge requests and/or patches against
['master' branch](https://k.copyleft.org/guide/changelog?branch=master)
are not necessarily rejected.  In fact, if your change is a fix for typo,
spelling, grammar, formatting or anything urgent, submitting a patch against
'master' may make more sense.

To use the instructions below for proposals against the 'master' branch, just
replace 'next' everywhere below with 'master'.


### Contributing via copyleft.org's Kallithea instance

First-time contributors may want to do the following four items first:

0. [Create an account on k.copyleft.org](https://k.copyleft.org/_admin/register)

1. [Visit k.copyleft.org/guide](https://k.copyleft.org/guide)
    and choose "Fork" from the "Options" menu.

    Instead of the default, you might call your clone
    "guide-USERNAME".

2. On the command line create a *local* clone of your Clone, by typing:

        $ git clone https://USERNAME@k.copyleft.org/guide-USERNAME copyleft-guide
        $ cd copyleft-guide
        $ git remote rename origin guide-USERNAME

    (The last part isn't strictly necessary; you just might want to name the
    upstream repository a more descriptive name, since below you'll add the
    official repository as well).

3. Now, add to your clone a copy of the "real" copyleft.org tutorial
   repository, and make a branch that tracks the official version:

        $ git remote add guide-official https://bkuhn@k.copyleft.org/guide
        $ git fetch guide-official
        $ git branch --track official-next guide-official/next

That completes the first-time setup.  Next is a workflow each proposed merge
request.

0. First, ensure the Git repository points at the right branch and all old
   changes are committed.

        $ git status

   The output of the last command should look like this:

        # On branch SOME_BRANCH
        nothing to commit (working directory clean)

   If you don't get that output, you probably have uncommitted changes from
   some other situation, which is beyond the scope of this document.

1. Now, get the most recent version of the 'next' branch:

        $ git checkout master
        $ git branch -D official-next
        $ git fetch guide-official
        $ git branch --track official-next gude-official/next
        $ git checkout official-next
        $ git pull

   (This step is more complicated than is typically found in a tutorial like
   this.  Experienced Git users will note the above is the easiest way to
   handle the fact that the 'next' branch is occasionally rebased against
   master.  If 'next' branch has not been rebased since the last time the
   operation was performed, the last two commands suffice for this step.)

1. Next, create a new branch to hold your changes:

        $ git checkout -b my-new-idea-for-tutorial official-next

   Use a name that briefly describes your planned proposal for
   "my-new-idea-for-tutorial".

2. Make your edits.  If you're editing the tutorial, you likely want to focus
   on the files ending in '.tex'.  Commit frequently while you're editing
   with:

        $ git commit -a

   Write useful and clear commit messages that explain the purpose of the
   changes.

3. When you are done all the changes related to 'my-new-idea-for-tutorial',
   verify they've all been committed this way:

        $ git status
        # On branch my-new-idea-for-tutorial
        nothing to commit (working directory clean)

4. Next, upload and publish those ideas to your own clone on Gitorious.

        $ git push guide-USERNAME my-new-idea-for-tutorial

    That's the end of the command-line part.

5. Now, visit the Kallithea pull request merge-request creation web interface at
   https://k.copyleft.org/guide-USERNAME/pull-request

   Initiate your merge request with by setting:

        Title:                  Briefly describe your proposal
        Description:            More completely describe your proposal
        Original Repository:    guide-USERNAME : my-new-idea-for-tutorial
        Destination Repository: guide (parent) : next

6. While it's possible to discuss the details of the merge request via the
   web interface, for larger changes, it may be worthwhile to start a thread
   on
   [the mailing list](http://lists.copyleft.org/cgi-bin/mailman/listinfo/discuss)
   about the merge request.  Include the URL of the merge request in the
   post.

## Gitorious Apocalypse Recovery

If you used to contribute via Gitorious, *don't panic*!  We were careful to
transition the project to Kallithea without requiring recloning the
repository.  If you initially did a clone of the main repository (i.e., not
your own clone) all you need to do one of these operations

For Git 1.8.0 or later:

    $ git remote set-url origin https://k.copyleft.org/guide
    $ git --set-upstream master origin/master
    $ git --set-upstream-to next origin/next

For any older version of Git:

    $ git remote set-url origin https://k.copyleft.org/guide
    $ git config branch.master.remote https://k.copyleft.org/guide
    $ git config branch.next.remote https://k.copyleft.org/guide

(If you renamed the gitorious remote to a different name, replace "origin"
with the name you used.  If you previously followed the workflow instructions
above, yours is probably called "guide-official", or "tutorial-official",
rather than "origin").

It's really that simple!

If you had a clone on gitorious, you have a bit more work to do, but feel
free to create a clone on k.copyleft.org and push any branches you care about
there!
