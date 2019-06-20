println("Setup...\n")

using Pkg

Pkg.instantiate()

deps = [
    "IJulia",
    "VegaLite",
    "HTTP",
    "JSON",
    "ArgParse",
    "Humanize",
    "DataFrames",
]

Pkg.activate(pwd())
Pkg.add.(deps)
#Pkg.build("IJulia")

println("\nSetup done.")
