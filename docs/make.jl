using RayTracer
using Documenter

DocMeta.setdocmeta!(RayTracer, :DocTestSetup, :(using RayTracer); recursive=true)

makedocs(;
    modules=[RayTracer],
    authors="Mohamed Kamal AbdElrahman",
    repo="https://github.com/MKAbdElrahman/RayTracer.jl/blob/{commit}{path}#{line}",
    sitename="RayTracer.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MKAbdElrahman.github.io/RayTracer.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MKAbdElrahman/RayTracer.jl",
    devbranch="main",
)
