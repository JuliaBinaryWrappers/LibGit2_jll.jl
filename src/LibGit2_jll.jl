# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LibGit2_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("LibGit2")
JLLWrappers.@generate_main_file("LibGit2", UUID("e37daf67-58a4-590a-8e99-b0245dd2ffc5"))
end  # module LibGit2_jll
