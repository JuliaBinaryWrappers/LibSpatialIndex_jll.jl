# Autogenerated wrapper script for LibSpatialIndex_jll for x86_64-linux-musl-cxx11
export libspatialindex_c, libspatialindex

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libspatialindex_c`
const libspatialindex_c_splitpath = ["lib", "libspatialindex_c.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libspatialindex_c_path = ""

# libspatialindex_c-specific global declaration
# This will be filled out by __init__()
libspatialindex_c_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libspatialindex_c = "libspatialindex_c.so.4"


# Relative path to `libspatialindex`
const libspatialindex_splitpath = ["lib", "libspatialindex.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libspatialindex_path = ""

# libspatialindex-specific global declaration
# This will be filled out by __init__()
libspatialindex_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libspatialindex = "libspatialindex.so.4"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"LibSpatialIndex")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libspatialindex_c_path = normpath(joinpath(artifact_dir, libspatialindex_c_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libspatialindex_c_handle = dlopen(libspatialindex_c_path)
    push!(LIBPATH_list, dirname(libspatialindex_c_path))

    global libspatialindex_path = normpath(joinpath(artifact_dir, libspatialindex_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libspatialindex_handle = dlopen(libspatialindex_path)
    push!(LIBPATH_list, dirname(libspatialindex_path))

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

