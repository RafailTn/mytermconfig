# env.nu
#
# Installed by:
# version = "0.108.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.
zoxide init nushell | save -f ~/.zoxide.nu
# 1. Set the COMETS_HOME variable
$env.COMETS_HOME = "/home/rafail/Downloads/comets_linux/comets_2.12.5/"

# 2. Append it to your PATH
# In Nushell, PATH is a list, so we use the `append` command instead of string concatenation
$env.PATH = ($env.PATH | append $env.COMETS_HOME)

# 3. Append to PYTHONPATH
# We use an `if` statement here just in case PYTHONPATH doesn't exist yet to avoid an error
$env.PYTHONPATH = if ("PYTHONPATH" in $env) {
    $"($env.PYTHONPATH):/home/rafail/Downloads/comets_linux/comets_2.12.5/lib/cometspy-master/"
} else {
    "/home/rafail/Downloads/comets_linux/comets_2.12.5/lib/cometspy-master/"
}

$env.GUROBI_HOME = "/home/rafail/Downloads/gurobi1301/linux64"
$env.PATH = ($env.PATH | append $env.GUROBI_HOME)
$env.GUROBI_PATH = "/home/rafail/Downloads/gurobi1301/linux64/bin"
$env.PATH = ($env.PATH | append $env.GUROBI_PATH)
$env.LD_LIBRARY_PATH = "/home/rafail/Downloads/gurobi1301/linux64/lib"
$env.PATH = ($env.PATH | append $env.LD_LIBRARY_PATH)
