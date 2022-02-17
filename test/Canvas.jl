@testset "Creating a canvas" begin
    canvas = Canvas{Int}(10, 20)
    @test size(canvas, 1) == 10
    @test size(canvas, 2) == 20
    @test iszero(canvas.pixels)
end
@testset "Writing pixels to a canvas" begin
    c = Canvas{Int}(10, 20)
    red = Color(1, 0, 0)
    c[2, 3] = red
    @test c[2, 3] == red
end
