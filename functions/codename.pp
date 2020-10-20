# @summary this function is just a simple alias to $facts['os']['name']['codename']
function debian::codename >> String {
    include debian
    $facts['os']['distro']['codename']
}
