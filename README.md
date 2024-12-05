# Data::Section::Pluggable::Plugin::Yaml ![static](https://github.com/uperl/Data-Section-Pluggable-Plugin-Yaml/workflows/static/badge.svg) ![linux](https://github.com/uperl/Data-Section-Pluggable-Plugin-Yaml/workflows/linux/badge.svg)

Data::Section::Pluggable Plugin for YAML

# SYNOPSIS

```perl
use Data::Section::Pluggable;

my $dsp = Data::Section::Pluggable->new
                                  ->add_plugin('yaml');

# prints "Welcome to Perl"
say $dsp->get_data_section('hello.yml')->{message};

__DATA__
@@ hello.yml
---
message: Welcome to Perl
```

# DESCRIPTION

This plugin decodes YAML from `__DATA__`.  It only applies to
filenames with the `.yml` or `.yaml` extension.  Under the
covers it uses [YAML::XS](https://metacpan.org/pod/YAML::XS).

# SEE ALSO

- [Data::Section::Pluggable](https://metacpan.org/pod/Data::Section::Pluggable)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
