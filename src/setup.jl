println("Setup...\n")

function install(pkgname::AbstractString)
    println("Installing ", pkgname, "...")
    Pkg.add(pkgname)
    println()
end

deps = [
    "ArgParse",
    "DataFrames",
    "Humanize",
    "IJulia",
    "Gadfly",
    "Cairo",
    "Requests",
    "JSON",
    "Interact",
    "Escher",
    "ComposeDiff",
]

Pkg.init()
Pkg.update()
println()
map(install, deps)

println("Force precompilation...")
map(require, map(symbol, deps))

println("Force IJulia kernel install...")
Pkg.build("IJulia")

println("Setup done.")
