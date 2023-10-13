# Autogenerated wrapper script for LibSpatialIndex_jll for x86_64-linux-musl-cxx11
export libspatialindex, libspatialindex_c

JLLWrappers.@generate_wrapper_header("LibSpatialIndex")
JLLWrappers.@declare_library_product(libspatialindex, "libspatialindex.so.6")
JLLWrappers.@declare_library_product(libspatialindex_c, "libspatialindex_c.so.6")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libspatialindex,
        "lib/libspatialindex.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libspatialindex_c,
        "lib/libspatialindex_c.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
