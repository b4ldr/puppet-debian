function debian::codename::require (
    String                                 $codename,
    Enum['==', '>=', '>', '<', '<=', '!='] $operator = '==',
) {
    unless debian::codename::compare($codename, $operator) {
        fail("node codename does not meet requirement `${debian::codename()} ${operator} ${codename}`")
    }
}
