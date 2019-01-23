
def toTarget(path):
  return path.replace('/','-').replace('.c','')

def createTests(deps, paths):
  for path in paths:
    native.cxx_test(
      name = toTarget(path),
      srcs = [path],
      deps = deps
    )

  return [':' + toTarget(path) for path in paths] 

