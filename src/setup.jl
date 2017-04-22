println("Setup...\n")

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
foreach(deps) do pkgname
    println("Installing ", pkgname, "...")
    Pkg.add(pkgname)
    println()
end

println("Force precompilation...")
foreach(deps) do pkgname
    println("Precompiling ", pkgname, "...")
    try
        Base.compilecache(pkgname)
    catch
        println("... error!")
    end
    println()
end

println("Force IJulia kernel install...")
Pkg.build("IJulia")

println("Setup done.")
