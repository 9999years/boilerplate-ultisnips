# boilerplate-ultisnips

boilerplate-ultisnips is a packaging of [Noah Frederick’s post on using
ultisnips for templating][nfrederick]. He used it with Projectionist too, but I
don’t really need that so I didn’t care to include it.

The name is carefully chosen to not start with “ultisnips”.

# Installation

You can use Vundle if you’d like or whatever else. It depends on [SirVer’s
ultisnips][ultisnips] though, so jot that down.

# Usage

Create mappings for `_skel` or whatever you set
`g:boilerplate_ultisnips_skel_trigger` to.

## Examples

    # tex.snippets

    snippet _skel "Skeleton" b
    \documentclass{article}
    \begin{document}
    $0
    \end{document}
    endsnippet

    # sh.snippets

    snippet _skel "Shebang" b
    #!/bin/sh
    $0
    endsnippet

Or a more complex example:

    # java.snippets

    snippet _skel "class boilerplate" b
    `!p
    if snip.basename.endswith('Test'):
        snip.rv = '''import static org.junit.jupiter.api.Assertions.*;
    import org.junit.jupiter.api.Test;

    ''' `public class `!p snip.rv = snip.basename` {
        $0
    }
    endsnippet

which inserts something like:

    public class Foo {

    }

for `Foo.java` and something like

    import static org.junit.jupiter.api.Assertions.*;
    import org.junit.jupiter.api.Test;

    public class FooTest {
    }

for `FooTest.java`.


[nfrederick]: https://web.archive.org/web/20170310215019/https://noahfrederick.com/log/vim-templates-with-ultisnips-and-projectionist
[ultisnips]: https://github.com/SirVer/ultisnips
