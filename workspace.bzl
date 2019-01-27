load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def setup_pegtl():
    new_git_repository(
        name = "PEGTL",
        remote = "https://github.com/taocpp/PEGTL.git",
        build_file = "@bazel_PEGTL//:BUILD.PEGTL",
        commit = "ea09eb9fa66e328087ba9f6c00963343936053ca",
    )
