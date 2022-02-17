module RayTracer

export  Point , Vec , Vec1 , Vec2 , Vec3
export Color
export Canvas
export Float

using Parameters , StaticArrays

const Float = Float64

include("Vec.jl")
include("Point.jl")
include("Color.jl")
include("Canvas.jl")
end
