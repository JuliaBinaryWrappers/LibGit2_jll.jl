# Autogenerated wrapper script for LibGit2_jll for x86_64-apple-darwin
export libgit2

using LibSSH2_jll
using OpenSSL_jll
JLLWrappers.@generate_wrapper_header("LibGit2")
JLLWrappers.@declare_library_product(libgit2, "@rpath/libgit2.1.8.dylib")
function __init__()
    JLLWrappers.@generate_init_header(LibSSH2_jll, OpenSSL_jll)
    JLLWrappers.@init_library_product(
        libgit2,
        "lib/libgit2.1.8.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
