# Contributions Welcome!

The maintainers of this Copyleft Guide project encourage contribution from
the community.  Part of the impetus for this project was to create a
community around a "copyleft codebase" for information about copyleft.  In
other words, this project is a tutorial project about Copyleft that is like a
Free Software project.

## Who Is In Charge?

Currently, [Bradley M. Kuhn](http://ebb.org/bkuhn/) is the editor-in-chief of
this Guide project.  However, many other contributors have given patches and
improvements to the text.  Review the
[commit log in the Git repository](https://gitorious.org/copyleft-org/tutorial/commits/master)
for more details on who has contributed to the project.

## How Do I Get Involved?

The Guide is maintained in a copylefted distributed version control system called
[Git](http://git-scm.com/).  Currently, the project utilizes the services of
a  Git hosting website called [Gitorious](https://gitorious.org). (The
software which runs Gitorious is, itself, copylefted, too.)

Those who are comfortable with Gitorious can submit
[merge requests on copyleft.org's gitorious site](https://gitorious.org/copyleft-org/tutorial/merge_requests).
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

## Merge Request and Patch Workflow

Currently, the main location for work on this project is
[on Gitorious](https://gitorious.org/copyleft-org/tutorial), and active new
development on the project happens on the
['next' branch](https://gitorious.org/copyleft-org/tutorial/source/next:)
(which is
[auto-published on the copyleft.org/guide-next URL](https://copyleft.org/guide-next/)).
Here is a suggested workflow for submitting patches &mdash; first doing so
*with* the Gitorious infrastructure, second *avoiding* the Gitorious
infrastructure but still using Git, and third avoiding Git altogether.

Merge requests and/or patches against
['next' branch](https://gitorious.org/copyleft-org/tutorial/source/next:) are
typically much preferred, and the workflow explanations below assume that.
However, merge requests and/or patches against
['master' branch](https://gitorious.org/copyleft-org/tutorial/source/master:)
are not necessarily rejected.  In fact, if your change is a fix for typo,
spelling, grammar, formatting or anything urgent, submitting a patch against
'master' may make more sense.

To use the instructions below for proposals against the 'master' branch, just
replace 'next' everywhere below with 'master'.


### Contributing via Gitorious

First-time contributors may want to do the following four items first:

0. [Create an account on Gitorious](https://gitorious.org/users/new)

1. [Visit gitorious.org/copyleft-org/tutorial](https://gitorious.org/copyleft-org/tutorial)
    and click "Clone".

    Instead of the default, you might call your clone
    "MYNAME-copyleft-tutorial-suggestions".

2. On the command line create a *local* clone of your Clone, by typing:

        $ git clone git@gitorious.org:copyleft-org/MYNAME-copyleft-tutorial-suggestions.git copyleft-tutorial
        $ cd copyleft-tutorial
        $ git remote rename origin MYNAME-copyleft-tutorial-suggestions

    (The last part isn't strictly necessary; you just might want to name the
    upstream repository a more descriptive name, since below you'll add the
    official repository as well).

3. Now, add to your clone a copy of the "real" Conservancy policies
   repository, and make a branch that tracks the official version:

        $ git remote add copyleft-tutorial-official git@gitorious.org:copyleft-org/tutorial.git
        $ git fetch copyleft-tutorial-official
        $ git branch --track official-next copyleft-tutorial-official/next

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
        $ git fetch copyleft-tutorial-official
        $ git branch --track official-next copyleft-tutorial-official/next
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

        $ git push MYNAME-copyleft-tutorial-suggestions my-new-idea-for-tutorial

    That's the end of the command-line part.

5. Now, visit Gitorious' merge-request creation web interface at
   https://gitorious.org/copyleft-org/MYNAME-copyleft-tutorial-suggestions/merge_requests/new

   Initiate your merge request with by setting:

        Summary:       Briefly describe your proposal
        Description:   More completely describe your proposal
        Target:        tutorial
        Target Branch: next
        Source Branch: my-new-idea-for-tutorial

6. While it's possible to discuss the details of the merge request via the
   web interface, for larger changes, it may be worthwhile to start a thread
   on
   [the mailing list](http://lists.copyleft.org/cgi-bin/mailman/listinfo/discuss)
   about the merge request.  Include the URL of the merge request in the
   post.
