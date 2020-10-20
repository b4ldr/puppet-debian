function debian::codename::eq (
    String $codename,
) >> Boolean {
    debian::codename::compare($codename)
}
