struct Canvas{T} <: AbstractArray{Color{T},2}
	pixels::Matrix{Color{T}}
end
function Canvas{T}(width::Int,length::Int) where T
	Canvas(zeros(Color{T},width,length))
end
	
Base.size(canvas::Canvas) = size(canvas.pixels)	
Base.getindex(canvas::Canvas,inds...) = getindex(canvas.pixels,inds...)	
Base.setindex!(canvas::Canvas,inds...) = setindex!(canvas.pixels,inds...)	
	