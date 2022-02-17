
@testset "Testing Vec Constructors" begin
	@test Vec{2,ComplexF64}(1+im,2) === SVector{2,ComplexF64}(1+im,2)
	@test Vec3(1,2,3) === SVector{3,Float}(1,2,3)
	@test Vec2(1,2) === SVector{2,Float}(1,2)
	@test Vec1(1) === SVector{1,Float}(1)
end