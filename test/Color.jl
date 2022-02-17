@testset "Adding Colors" begin
    @test Color(0,0,1) + Color(0,0,1) == Color(0,0,2)
end
@testset "Subtracting Colors" begin
    @test Color(0,0,1) - Color(0,0,1) == Color(0,0,0)
end
@testset "Multiplying Colors" begin
    @test Color(0,1,1) * Color(0,0,1) == Color(0,0,1)
end

@testset "Multiplying Colors by a scalar" begin
    @test Color(0,1,1) * 5 == Color(0,5,5)
    @test 5 * Color(0,1,1) == Color(0,5,5)
end

@testset "Zero Color" begin
    @test zero(Color{Int}) == Color(0,0,0)
end