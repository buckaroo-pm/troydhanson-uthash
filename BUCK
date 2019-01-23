load('//:subdir_glob.bzl', 'subdir_glob')
load('//:buckaroo_macros.bzl', 'buckaroo_deps_from_package')
load('//:tests.bzl', 'createTests')

cxx_library(
  name = 'uthash',
  header_namespace = '',
  exported_headers = subdir_glob([
    ('src', '*.h'),
  ]),
  visibility = [
    'PUBLIC',
  ],
)


test_suite(
  name = 'test',
  tests = createTests([':uthash'], glob(['tests/test*.c']))
)
