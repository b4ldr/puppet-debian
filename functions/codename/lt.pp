function debian::codename::lt (
    String $codename,
) >> Boolean {
    debian::codename::compare($codename, '<')
}
