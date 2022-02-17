@testset "Testing Point Constructors" begin
    @test Point(1,2) === Point(Vec(1.0,2.0))
    @test Point((1,2)) === Point(Vec(1.0,2.0))
    @test Point([1,2]) === Point(Vec(1.0,2.0))
end

@testset  "Adding a point to vector gives a point" begin
   a  =  Point(3, -2, 5)
   v =   Vec(-2, 3, 1)
   @test a + v == Point(1, 1, 6)
end
@testset  "Addition of point to vector is orderless" begin
    a  =  Point(3, -2, 5)
    v =   Vec(-2, 3, 1)
    @test a + v == v + a
 end
 

@testset "Subtracting two points gives a vector" begin
     p1  = Point(3, 2, 1)
     p2 =  Point(5, 6, 7)
    @test p1 - p2 === Vec(-2.0, -4.0, -6.0)
end

@testset "Subtracting a vector from a point gives a point" begin
     p = Point(3, 2, 1)
     v = Vec(5, 6, 7)
    @test p - v === Point(-2, -4, -6)
end

@testset "Subtracting a point from a vector gives a point" begin
    p = Point(3, 2, 1)
    v = Vec(5, 6, 7)
   @test v - p === Point(-2, -4, -6)
end