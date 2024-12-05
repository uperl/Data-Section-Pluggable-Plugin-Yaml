use warnings;
use 5.020;
use true;
use experimental qw( signatures );
use stable qw( postderef );

package Data::Section::Pluggable::Plugin::Yaml {

    # ABSTRACT: Data::Section::Pluggable Plugin for YAML

=head1 SYNOPSIS

# EXAMPLE: examples/synopsis.pl

=head1 DESCRIPTION

This plugin decodes YAML from C<__DATA__>.  It only applies to
filenames with the C<.yml> or C<.yaml> extension.  Under the
covers it uses L<YAML::XS>.

=head1 SEE ALSO

=over 4

=item L<Data::Section::Pluggable>

=back

=cut

    use Role::Tiny::With;
    use YAML::XS ();

    with 'Data::Section::Pluggable::Role::ContentProcessorPlugin';

    sub extensions ($class) {
        return ('yaml', 'yml');
    }

    sub process_content ($class, $dsp, $content) {
        YAML::XS::Load($content);
    }
}
