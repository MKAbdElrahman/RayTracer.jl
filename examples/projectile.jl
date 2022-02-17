using RayTracer
using Parameters

@with_kw mutable struct Particle{Dim}
    x⃗::Point{Dim}
    v⃗::Vec{Dim}
    m::Float = 1.0
end
@with_kw struct ExternalForces{Dim}
    F⃗::Vec{Dim}
    α::Float = 0.0
end


function step!(particle::Particle,forces::ExternalForces;dt = 1.0)
    @unpack x⃗,v⃗,m = particle
    @unpack F⃗,α = forces
    particle.x⃗ = x⃗ + dt .* v⃗
    particle.v⃗ = v⃗ + dt .* (F⃗/m - α .* v⃗)
    return particle.x⃗
end



using Plots


plt = plot(
    1,
    xlim = (-3, 3),
    ylim = (0, 3),
    title = "Universe",
    marker = 2,
    xlabel = "x",
    ylabel = "y",
)
projectile = Particle(x⃗ =  Point(-3, 0),v⃗ =  Vec(2, 3))
forces = ExternalForces(F⃗ = Vec(0, -1.0), α = .3)

# build an animated gif by pushing new points to the plot, saving every 2th frame
@gif for i=1:50
    push!(plt, (projectile.x⃗.coords)...)
    step!(projectile,forces,dt = 0.1)
end every 2