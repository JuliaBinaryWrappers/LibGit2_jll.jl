# Autogenerated wrapper script for LibGit2_jll for i686-linux-gnu
export libgit2

using MbedTLS_jll
using LibSSH2_jll
JLLWrappers.@generate_wrapper_header("LibGit2")
JLLWrappers.@declare_library_product(libgit2, "libgit2.so.1.3")
function __init__()
    JLLWrappers.@generate_init_header(MbedTLS_jll, LibSSH2_jll)
    JLLWrappers.@init_library_product(
        libgit2,
        "lib/libgit2.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
