struct Point{Dim}
    coords::Vec{Dim,Float}
    Point(vec::Vec{Dim,T})  where {Dim,T} = new{Dim}(Vec{Dim,Float}(vec))
end

Point(vec::AbstractVector) = Point(Vec{length(vec)}(vec))
Point(coords...) = Point(Vec(coords...))
Point(p::Point) = p
coordinates(p::Point) = p.coords

# point  + vector ---> point
Base.:(+)(p::Point{Dim},v::Vec{Dim}) where Dim = Point(coordinates(p) + v)
# vector + point ---> point
Base.:(+)(v::Vec{Dim},p::Point{Dim}) where Dim =   Point(p + v)
# point  - point ---> vector
Base.:(-)(a::Point{Dim},b::Point{Dim}) where Dim = Vec(coordinates(a) - coordinates(b))
# point  - vector ---> point
Base.:(-)(a::Point{Dim},v::Vec{Dim}) where Dim = Point(coordinates(a) - v)
# vector - point ---> point
Base.:(-)(v::Vec{Dim},p::Point{Dim}) where Dim = Point(p - v)
