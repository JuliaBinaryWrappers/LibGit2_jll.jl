# Autogenerated wrapper script for LibGit2_jll for x86_64-unknown-freebsd11.1
export libgit2

using MbedTLS_jll
using LibSSH2_jll
using LibCURL_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libgit2`
const libgit2_splitpath = ["lib", "libgit2.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgit2_path = ""

# libgit2-specific global declaration
# This will be filled out by __init__()
libgit2_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgit2 = "libgit2.so.28"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"LibGit2")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (MbedTLS_jll.PATH_list, LibSSH2_jll.PATH_list, LibCURL_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (MbedTLS_jll.LIBPATH_list, LibSSH2_jll.LIBPATH_list, LibCURL_jll.LIBPATH_list,))

    global libgit2_path = normpath(joinpath(artifact_dir, libgit2_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgit2_handle = dlopen(libgit2_path)
    push!(LIBPATH_list, dirname(libgit2_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

