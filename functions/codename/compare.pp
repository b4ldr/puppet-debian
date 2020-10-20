function debian::codename::compare (
    String                                 $codename,
    Enum['==', '>=', '>', '<', '<=', '!='] $operator = '==',
) >> Boolean {
    include debian

    $valid_codenames = $debian::supported[$facts['os']['name']]

    unless $codename in $valid_codenames {
        fail("invalid codename (${codename}). supported codenames : ${valid_codenames.keys.join(', ')}")
    }

    $operator ? {
        '>='    => Integer($facts['os']['release']['major']) >= $valid_codenames[$codename],
        '>'     => Integer($facts['os']['release']['major']) > $valid_codenames[$codename],
        '<='    => Integer($facts['os']['release']['major']) <= $valid_codenames[$codename],
        '<'     => Integer($facts['os']['release']['major']) < $valid_codenames[$codename],
        '!='    => Integer($facts['os']['release']['major']) != $valid_codenames[$codename],
        default => Integer($facts['os']['release']['major']) == $valid_codenames[$codename],
    }
}
