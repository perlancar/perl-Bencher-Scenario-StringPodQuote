package Bencher::Scenario::StringPodQuote;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark String::PodQuote',
    participants => [
        {
            fcall_template => 'String::PodQuote::pod_escape(<text>)',
        },
    ],
    datasets => [
        {

            name => 'short', args => {text=>'This is <, >, C<=>, =, /, and |.'},
        },
        {
            name => 'long', args => {text=><<'_',},
Normally you will only need to do this in an application, not in modules. One
piece of advice is to allow user to change the level without her having to
modify the source code, for example via environment variable and/or < command-line
option. An application framework like L<Perinci::CmdLine> will already take care
of this for you, so you don't need to do C<set_level> manually at all.
_

        },
    ],
};

1;
# ABSTRACT:
