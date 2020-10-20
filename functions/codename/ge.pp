function debian::codename::ge (
    String $codename,
) >> Boolean {
    debian::codename::compare($codename, '>=')
}
