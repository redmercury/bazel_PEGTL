def generate_test(src):
    basename_cc = src.rpartition("/")[2]
    basename = basename_cc.partition(".cpp")[0]

    native.cc_test(
        name = "%s_test" % basename,
        srcs = [src],
        includes = ["src/test/pegtl", "include", "include/tao", "include/tao/pegtl"],
        data = [":unit_test_data"],
        deps = [
            ":pegtl",
            ":pegtl_contrib",
            ":pegtl_contrib_icu",
            ":unit_test_hdrs",
        ])