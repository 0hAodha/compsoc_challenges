#!/usr/bin/perl
# Read the contents of flag.txt. You can only use commands in the approved list.
# Hint: You can supply whatever parameters you like to the command!

my @approved_commands = ("ls", "pwd", "whoami");

while (1) {
    printf("\n> ");
    my $command = <STDIN>;

    foreach my $approved_command (@approved_commands) {
        if ($command =~ /^$approved_command/) {
            print(`$command`);
            last;
        }
    }
}
