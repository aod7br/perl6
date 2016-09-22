#!/usr/bin/env perl6
# -*- coding: utf-8 -*-
=begin comment
    This is a demo of Perl6's powerful unicode operators
    Plus you get to know a lot of Perl6 new syntax
=end comment

module Vasco;

sub infix:<✠> (@list, $object) is export(:MANDATORY) {

    if !defined @list or  !defined $object {
        die X::AdHoc.new(payload => 'Cannot use ✠ on undefined objects')
    }

    if (@list.elems)==0 {
        return (Any, $object);
    }
    else {
        return (@list[0], $object, @list[1..*])
    }

}

say ("Marcos", "Adriana", "Julio") ✠ "Andre";
say () ✠ "Andre";
