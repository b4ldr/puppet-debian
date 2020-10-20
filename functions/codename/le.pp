function debian::codename::le (
    String $codename,
) >> Boolean {
    debian::codename::compare($codename, '<=')
}
