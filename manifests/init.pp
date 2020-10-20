# class to set up metadat functions for debian
class debian {
    unless $facts['os']['family'] == 'Debian' {
        fail('Only Debian is supported')
    }
    $supported = {
        'Debian'   => {
            'jessie'   => 8,
            'stretch'  => 9,
            'buster'   => 10,
            'bullseye' => 11,
        }
    }
    unless $facts['os']['name'] in $supported {
        fail("invalid Derivative (${$facts['os']}). supported derivatives: ${supported.keys.join(', ')}")
    }
}
