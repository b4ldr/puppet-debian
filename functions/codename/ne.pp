function debian::codename::ne (
    String $codename,
) >> Boolean {
    debian::codename::compare($codename, '!=')
}
