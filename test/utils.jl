@testset "utils" begin
    dims = (3, 4, 5)
    N = length(dims)

    A = rand(dims...)
    coord = GraphSignals.generate_coordinates(A)
    @test size(coord) == (N, dims...)

    coord = GraphSignals.generate_coordinates(A, with_batch=true)
    @test size(coord) == (N-1, dims[1:end-1]...)
end
