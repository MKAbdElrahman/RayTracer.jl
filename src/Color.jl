struct Color{T}
    red::T
    green::T
    blue::T
end

function Base.:(+)(color_a::Color{T},color_b::Color{T}) where T
    Color(
        color_a.red + color_b.red,
        color_a.green + color_b.green,
        color_a.blue + color_b.blue
    )
end
function Base.:(-)(color_a::T,color_b::T) where T
    Color(
        color_a.red - color_b.red,
        color_a.green - color_b.green,
        color_a.blue - color_b.blue
    )
end
function Base.:(*)(color_a::Color{T},color_b::Color{T}) where T
    Color(
        color_a.red * color_b.red,
        color_a.green * color_b.green,
        color_a.blue * color_b.blue
    )
end
function Base.:(*)(color::Color{T},scalar::Real) where T
    Color(
        color.red * scalar,
        color.green * scalar,
        color.blue * scalar
    )
end

Base.:(*)(scaler::Real, color::Color{T}) where T = color*scaler 