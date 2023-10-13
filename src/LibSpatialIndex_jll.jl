# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LibSpatialIndex_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("LibSpatialIndex")
JLLWrappers.@generate_main_file("LibSpatialIndex", UUID("00e98e2a-4326-5239-88cb-15dcbe1c18d0"))
end  # module LibSpatialIndex_jll
