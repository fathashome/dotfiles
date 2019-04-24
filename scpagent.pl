!/usr/bin/perl
# Allows agent-forwarding to work with scp through SCB when called with the -S option
# ref: https://www.balabit.com/documents/scb-latest-guides/en/scb-guide-admin/html/chapter-scp-agent-forwarding.html
exec '/usr/bin/ssh', map {($_ eq '-oForwardAgent no' or $_ eq '-oForwardAgent=no') ? ( ) : $_} @ARGV;
