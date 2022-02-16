using RayTracer:PointOrVector

@testset "A tuple with w= 1.0 is a point" begin
    @test  point(4.3, -4.2, 3.1) == PointOrVector(4.3, -4.2, 3.1,1.0)
end
 @testset "A tuple with w= 0.0 is a vector" begin
    @test vector(4.3, -4.2, 3.1) == PointOrVector(4.3, -4.2, 3.1,0.0)
end
 @testset "Adding two tuples" begin
     a = PointOrVector(1,2.5,3.4,1)
     b = PointOrVector(1,2.1,2.3,0)
    @test PointOrVector(2.0,4.6,5.7,1.0) == a + b
end

 @testset "Substracting two points" begin
     a = point(1,2.5,3.4)
     b = point(1,2.1,2.3)
    @test vector(0,0.4,1.1) == a - b
end
@testset "Substracting two vectors" begin
     a = vector(1,2.5,3.4)
     b = vector(1,2.1,2.3)
    @test vector(0,0.4,1.1) == a - b
end
@testset "Substracting a vector from a point" begin
     a = point(1,2.5,3.4)
     b = vector(1,2.1,2.3)
    @test point(0,0.4,1.1) == a - b
end
@testset "Negating a tuple" begin
    @test PointOrVector(-1,-2.5,-3.4,-1) == -PointOrVector(1,2.5,3.4,1)
end
@testset "Multiplying a tuple by a scalar" begin
    @test PointOrVector(2,2.4,4.8,2) == 2.0 * PointOrVector(1,1.2,2.4,1)
end
@testset "Dividing a tuple by a scalar" begin
    @test PointOrVector(2,2.4,4.8,2) / 3.5 ==  PointOrVector(2,2.4,4.8,2) * 1/3.5 
end

 @testset "Magitude of a vector" begin
    @test magnitude(vector(1,0,0)) == 1
end
@testset "Normalizing a vector" begin
    vec = vector(2.5,0,0)
    @test normalize(vec) == vector(1,0,0)
end
@testset "The dot product of two tuples" begin
     a = PointOrVector(1,1,0,1)
     b = PointOrVector(1,2.1,2.3,1)
    @test dot(a,b) ==  1 * 1  + 1 * 2.1 + 0 * 2.3 + 1 * 1
end
@testset "The cross product of two vectors" begin
    a =  vector(1, 2, 3)
     b = vector(2, 3, 4)
    @test cross(a, b) == vector(-1, 2, -1)
    @test cross(b, a) == vector(1, -2, 1)
end
