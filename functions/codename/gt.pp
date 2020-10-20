function debian::codename::gt (
    String $codename,
) >> Boolean {
    debian::codename::compare($codename, '>')
}
