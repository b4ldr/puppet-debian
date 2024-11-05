# @summary preform basic constraints tests and configure variables
#          this class will be called automatically
class debian {
    unless $facts['os']['family'] in ['Debian', 'Ubuntu'] {
        fail('Only Debian and Ubuntu are supported')
    }
    $supported = {
        'Debian' => {
            'jessie'   => 8,
            'stretch'  => 9,
            'buster'   => 10,
            'bullseye' => 11,
            'bookworm' => 12,
            'trixie'   => 13,
        },
        'Ubuntu' => {
          'bionic' => 18.04,
          'focal'  => 20.04,
          'jammy'  => 22.04,
          'noble'  => 24.04,
        }
    }
    unless $facts['os']['name'] in $supported {
        fail("invalid Derivative (${$facts['os']}). supported derivatives: ${supported.keys.join(', ')}")
    }
}
