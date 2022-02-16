@with_kw struct PointOrVector 
	x::Float = 0.0
	y::Float = 0.0
	z::Float = 0.0
	w::Float 
end	
point(x,y,z) = PointOrVector(x,y,z,1)	
vector(x,y,z) = PointOrVector(x,y,z,0)	
function Base.:(==)(a::PointOrVector,b::PointOrVector)	
	a.x ≈ b.x && a.y  ≈ b.y && a.z ≈ b.z && a.w  ≈ b.w
end
function Base.:(+)(a::PointOrVector,b::PointOrVector)
	return PointOrVector(a.x+b.x,a.y+b.y,a.z+b.z,a.w+b.w)
end
function Base.:(-)(a::PointOrVector,b::PointOrVector)
	return PointOrVector(a.x-b.x,a.y-b.y,a.z-b.z,a.w-b.w)
end	
function Base.:(-)(b::PointOrVector)
	return PointOrVector(-b.x,-b.y,-b.z,-b.w)
end
function Base.:(*)(c::Number,b::PointOrVector)
	return PointOrVector(c * b.x,c * b.y,c * b.z,c * b.w)
end	
Base.:(*)(b::PointOrVector,c::Number) = c * b

Base.:(/)(b::PointOrVector,c::Number) = 1/c * b

function magnitude(a::PointOrVector)
	@unpack x,y,z,w = a
	sqrt(x^2 + y^2 + z^2 + w^2)
end

function normalize(a::PointOrVector)
	 inv(magnitude(a)) * a	
end	

function dot(a::PointOrVector,b::PointOrVector)
	 a.x * b.x + a.y * b.y + a.z *b.z + a.w * b.w
end
function cross(a::PointOrVector,b::PointOrVector)
	vector(
		a.y * b.z - a.z * b.y,
		a.z * b.x - a.x * b.z,
		a.x * b.y - a.y * b.x
	)
end